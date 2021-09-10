<!--
-Author: Dominic Thoendel
-->
<?php

require_once('model/database.php');
require_once('model/Area.php');
require_once('model/AreaDB.php');
require_once('model/Button.php');
require_once('model/ButtonDB.php');
require_once('model/validation.php');
require_once('model/Player.php');
require_once('model/PlayerDB.php');
require_once('model/controllerSecurity.php');
require_once('model/Ending.php');
require_once('model/EndingDB.php');
$lifetime = 60 * 60 * 24 * 1;
session_set_cookie_params($lifetime);
session_start();


$action = filter_input(INPUT_POST, 'action');

if (empty($_SESSION['player'])) {
    $_SESSION['player'] = "";
}

if ($action == NULL) {
    $action = filter_input(INPUT_GET, 'action');
    if ($action == NULL) {
        $action = 'homePage';
    }
}

switch ($action) {
    case 'homePage':
	//Brought here when first opening the game, or click
	//back to Register from the login page
        $userName = filter_input(INPUT_POST, 'uName', FILTER_SANITIZE_SPECIAL_CHARS);
        $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_SPECIAL_CHARS);
        $password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_SPECIAL_CHARS);
        $uName = "";
        $emailCheck = "";
        $pWord = "";

        include 'view/HomePage.php';
        die();
        break;
    case 'startGame':
	//Brought here when you click Register on the register page
	//We cannot come here from the login due to the email address
        $userName = filter_input(INPUT_POST, 'uName', FILTER_SANITIZE_SPECIAL_CHARS);
        $email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL, FILTER_SANITIZE_SPECIAL_CHARS);
        $password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_SPECIAL_CHARS);
        $uName = Validation::isNotEmpty($userName, "User Name");
        $pWord = Validation::isNotEmpty($password, "Password");
        $emailCheck = "";
        if (!$email) {
            $emailCheck = "Email is invalid";
        }

        $pWord = Validation::checkPassword($password);
        if ($uName === "") {
            $uName = Validation::checkUserName($userName, "User Name");
        }
        if ($uName === "") {
            $uName = Validation::isUnique($userName, "User Name", "userName");
        }
        if ($emailCheck === "") {
            $emailCheck = Validation::isUnique($email, "Email", "email");
        }
        if ($uName === "" && $emailCheck === "" && $pWord === "") {
            $password = password_hash($password, PASSWORD_BCRYPT);
            $currentPlayer = new Player($userName, $email, $password);
            $currentPlayer->setId(PlayerDB::insertNewPlayer($currentPlayer));
            $_SESSION['player'] = $currentPlayer;

            $currentName = $currentPlayer->getUserName();

            $area = AreaDB::getNextLocaiton(1);
            $currentArea = new Area($area[0]['areaID'], $area[0]['areaTerrain'], $area[0]['areaStory'], $area[0]['areaItem'], $area[0]['areaItemCheck']);
            $currentAreaID = $currentArea->getAreaID();
            $currentTerrain = $currentArea->getAreaTerrain();
            $currentStory = $currentArea->getAreaStory();
            $currentItem = $currentArea->getAreaItem();
            $currentItemCheck = $currentArea->getAreaItemCheck();

            $buttonsArray = ButtonDB::getNextLocaitonButtons(1);
            $buttons = array();
            foreach ($buttonsArray as $dump) {
                $button = new Button($dump['buttonID'], $dump['buttonAreaID'], $dump['buttonNextAreaID'], $dump['buttonText'], $dump['buttonEndingID'], $dump['buttonItemCheck']);
                array_push($buttons, $button);
            }
            include('view/GamePage.php');
        } else {
            include('view/HomePage.php');
        }
        die();
        break;

    case 'nextArea':
	//Brought here when you click any option within the game
        $nextLocation = filter_input(INPUT_POST, 'nextLocation');
        $area = AreaDB::getNextLocaiton($nextLocation);

        $currentArea = new Area($area[0]['areaID'], $area[0]['areaTerrain'], $area[0]['areaStory'], $area[0]['areaItem'], $area[0]['areaItemCheck']);

        $currentAreaID = $currentArea->getAreaID();
        $currentTerrain = $currentArea->getAreaTerrain();
        $currentImageName = $currentTerrain;
        $currentStory = $currentArea->getAreaStory();
        $currentAreaItem = $currentArea->getAreaItem();
        $currentItemCheck = $currentArea->getAreaItemCheck();
        $currentPlayer = $_SESSION['player'];
        $currentName = $currentPlayer->getUserName();
        if ($currentAreaItem !== NULL) {
            $currentPlayer->setPlayerItem($currentAreaItem);
            PlayerDB::setPlayerItem($currentPlayer);
        }

        $buttonsArray = ButtonDB::getNextLocaitonButtons($nextLocation);
        $buttons = array();
        foreach ($buttonsArray as $dump) {
            $button = new Button($dump['buttonID'], $dump['buttonAreaID'], $dump['buttonNextAreaID'], $dump['buttonText'], $dump['buttonEndingID'], $dump['buttonItemCheck']);
            array_push($buttons, $button);
        }

        if ($currentItemCheck !== NULL) {
//            $currentItem = $_SESSION['Player']->getPlayerItem();
            if ($currentPlayer->getPlayerItem() === $currentItemCheck) {
                $buttonsArray = ButtonDB::getItemButtons($currentItemCheck);
                foreach ($buttonsArray as $dump) {
                    $button = new Button($dump['buttonID'], $dump['buttonAreaID'], $dump['buttonNextAreaID'], $dump['buttonText'], $dump['buttonEndingID'], $dump['buttonItemCheck']);
                    array_push($buttons, $button);
                }
            }
        }
        include('view/GamePage.php');
        die();
        break;
    case 'LogIn':
	//CLICKED "Or Login" on register page
	//Sends player to Login page, blanks out inputs.
        $uName = "";
        $pWord = "";

        include 'view/LoginPage.php';
        die();
        break;
    case 'loginPlayer':
	//Brought here when you click Login on the Login page
        $userName = filter_input(INPUT_POST, 'loginUName', FILTER_SANITIZE_SPECIAL_CHARS);
        $password = filter_input(INPUT_POST, 'loginPassword', FILTER_SANITIZE_SPECIAL_CHARS);
        $uName = Validation::isNotEmpty($userName, "User Name");
        $pWord = Validation::checkPassword($password);

        if ($uName === "" && $pWord === "") {
            $hashedPasswordList = PlayerDB::getPasswordHash($userName);
            if (!empty($hashedPasswordList)) {
                $hashedPassword = $hashedPasswordList[0]['playerPasswordHash'];
                if (password_verify($password, $hashedPassword)) {
                    $playerList = PlayerDB::getPlayer($userName);
                    $currentPlayer = new Player($playerList[0]['PlayerUserName'], $playerList[0]['PlayerEmail'], $playerList[0]['PlayerPasswordHash'], $playerList[0]['playerItem']);
                    $currentPlayer->setId($playerList[0]['PlayerID']);
                    $_SESSION['player'] = $currentPlayer;
                    $currentName = $currentPlayer->getUserName();

                    $area = AreaDB::getNextLocaiton(1);
                    $currentArea = new Area($area[0]['areaID'], $area[0]['areaTerrain'], $area[0]['areaStory'], $area[0]['areaItem'], $area[0]['areaItemCheck']);
                    $currentAreaID = $currentArea->getAreaID();
                    $currentTerrain = $currentArea->getAreaTerrain();
                    $currentStory = $currentArea->getAreaStory();
                    $currentItem = $currentArea->getAreaItem();
                    $currentItemCheck = $currentArea->getAreaItemCheck();

                    $buttonsArray = ButtonDB::getNextLocaitonButtons(1);
                    $buttons = array();
                    foreach ($buttonsArray as $dump) {
                        $button = new Button($dump['buttonID'], $dump['buttonAreaID'], $dump['buttonNextAreaID'], $dump['buttonText'], $dump['buttonEndingID'], $dump['buttonItemCheck']);
                        array_push($buttons, $button);
                    }
                    $errorMessage = "";
                    include('view/GamePage.php');
                } else {
                    //$error = "Username or Password is not correct";
                    $password = "";
                    $hashedPasswordList = [];
                    include('view/LoginPage.php');
                }
            } else {
                //$error = "Username Doesn't exist";
                $password = "";
                $hashedPasswordList = [];
                include('view/LoginPage.php');
            }
        } else {
            //$error = "Username or Password is not correct";
            $password = "";
            $hashedPasswordList = [];
            include('view/LoginPage.php');
        }
        die();
        break;
    case 'endings':
        $endingID = filter_input(INPUT_POST, 'endingID');
        $currentEnding = EndingDB::getEnding($endingID);
        $currentEndingID = $currentEnding[0]['EndingID'];
        $currentEndingTitle = $currentEnding[0]['EndingTitle'];

        $currentPlayer = $_SESSION['player'];
        $currentPlayerID = $currentPlayer->getId();
        $currentPlayerName = $currentPlayer->getUserName();
        //check ending table for currentEndingTitle in DB tied to PlayerEnd
        $endingCheck = EndingDB::checkPlayerEndings($currentPlayerID, $currentEndingID);
        if (empty($endingCheck)) {
            $currentEndingAchieved = new Ending("", $currentEndingTitle, "", $currentPlayerID, $currentEndingID);
            $endingArray = EndingDB::createEnding($currentEndingAchieved);
        }
//        send info to the endings.php view.
        $playersEndings = EndingDB::getPlayerEndings($currentPlayerID);
        $endings = array();
        foreach ($playersEndings as $dump) {
            $ending = new Ending($dump['EndingPlacementID'], $dump['EndingName'], $dump['EndingTime'], $dump['PlayerEnd'], $dump['EndingID']);
            array_push($endings, $ending);
        }

        include('view/Endings.php');
        die();
        break;
    case 'logout':
        $_SESSION['player'] = "";
        $userName = filter_input(INPUT_POST, 'uName');
        $email = filter_input(INPUT_POST, 'emailCheck');
        $emailCheck = "";
        $password = "";
        $uName = "";
        $pWord = "";
        $error = "";
        include('view/HomePage.php');
        die();
        break;
}
//The best way to get a project done faster is to start sooner. -Jim Highsmith
//The first 90 percent of the code accounts for the first 90 percent of the development time.
//The remaining 10 percent of the code accounts for the other 90 percent of the development time. -Tom Cargill
?>
