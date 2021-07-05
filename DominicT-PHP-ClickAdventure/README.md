# Program 3: Click Adventure
# Author: Dominic Thoendel
# Date: Originally created Fall 2019. 
The database info is in the 127_0_0_1.sql file. I use XAMPP to get an Apache and MySql server running.
I used PHPMyAdmin through XAMPP to import or edit the DB.
Test registration: User -> acts  Password -> Aa1 (eh, eh, one)

START
When you get it running, you'll be welcomed by a Registration page, 
or you can click the button to log-in with an existing account. The 
Username must be between 4 and 30 characters. Email must be in correct format, (*@*.*)
Password only needs to be 3 characters long, but it must contain 3 of these 4 properties;
1 uppercase letter, 1 lowercase letter, 1 numeric digit, and/or 1 of the following special
characters (!@#$%^&*()?-=_+<>). 
The registration info is saved into the database if the registration is successful. The password is 
hashed and the hash is saved into the database.

FIRST SCREEN
There's a logout button in the upper left corner which will log you out and take you to the registration
page. The username you chose will be entered in the bold heading to fit (Username's Game). There are 
3 buttons on this first screen, and a dynamic amount of buttons on all other pages. There's also a crudely 
drawn area images that is supposed to show where you're at. I didn't have time to make all of the images, but 
this one image works for a couple of screens.

EXAMPLE
Choose to go down the stairs, you'll be stopped because it's dark down there and you can't see. If you click
the "go back" button, and "check vicinity" on this first screen, you'll be given options to take an item.
"Take Flashlight" brings you to this middle dialouge, which continues to the home area when you click 
"go back." Now that you have a flashlight, click "go down the stairs" again, and a new option will be 
dynamically created since you now meet the criteria!

HOW IT WORKS
Most all of the text is taken from the Database. In the "locations" table, I have an areaID that will be read 
into the PHP with some "areaStory" text. Each time you click a button, you go to a new areaID. Each button has a 
"buttonAreaID" that if matches the "areaID" the button will show up. Other buttons require you to pass a 
"buttonItemCheck" to see if you have the item that will give you further options. Each button also contains a 
"buttonNextAreaID" that is used to load in the "areaID" that the button leads too.
The "areaTerrain" was a way for me to create the background images and load in the images with the correct title. 