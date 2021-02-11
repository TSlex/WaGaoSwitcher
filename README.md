# WaGaoSwitcher (windows only)
This is simple .bat script, that can switch a driver for wacom or gaomon

Fast FAQ: 
- It will not make gaomon and wacom work at the same time, until some one will compine this two dll's :(
- If not working, try again, maybe lagg idk

How it works?
-

When you install driver it creates the actual driver wintab32.dll file in system32 directory.
This script initialy stops the service, then it replaces wintab32.dll with one in gaomon or wacom forlers in root.
Finally it launches the service again, and voila~

Also, it check in some application is using driver right now, like photoshop or clip studio paint (your application name here), because while using system protects wintab32.dll from changes (also service won't stop).

How to use it?
-

### Firstly theres two ways
1) You can use drivers, that i've used, but they are a bit old, and oooo, creepy suspiciouls files, so go to second way
2) You need to download drivers from official websites and install both, copying wintab32.dll to corresponding folder after each installation, so you will have two pure and verified files.

### Now you can use .bat file (run as administator) or shortcut
There is 3 options:

 - 0 - will setup waocom driver 
 - 1 - will setup gaomon driver 
 - 2 - will relaunch wacom services, as they bacome buggy sometimes (may be
   irrelevant)

If you currently working with wacom, but want to work with gaomon, close all "drawing" apps and use "1" option, and so on...

P.S. sorry for my english 🐸
