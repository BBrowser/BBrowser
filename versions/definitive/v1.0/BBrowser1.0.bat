@echo off
title BBrowser
:menu
title BBrowser - Home
echo Welcome to BBrowser, A User-Friendly Command-Based Web Browser
echo Powered by Other Browsers
echo Select an Option (The Settings are Not Saved)
echo You first need to setup the Browser. Go to Settings > Browser
echo 1) Settings
echo 2) Browse The Web
echo 3) Browse The Web (Incognito Mode, Works only in Chrome Forks)
echo 4) Tools
set /p init="Put a Number"
if %init% == 4 goto tools-hub
if %init% == 1 goto settings
if %init% == 2 goto web
if %init% == 3 goto incognito
:settings
cls
title BBrowser - Settings
echo Options
echo 1) Set the Browser
echo 2) Return to menu
set /p settings-selection="Select an Option:"
if %settings-selection% == 1 goto label
if %settings-selection% == 2 goto menu
:usr-conf
title BBrowser - Username
echo How do you want to be Named?
set /p username="Your Name:"
echo Hello, %username%, Is It Right?
set /p usr-confirm ="(Y/N) "
if %usr-confirm% == Y goto settings
if %usr-confirm% == N goto settings
:label
title BBrowser - Browser
echo Type your Browser
echo For Microsoft Edge: msedge.exe
echo For Google Chrome: chrome
echo For Brave: brave
echo You must have Installed the Browser you Will Use in your PC
set /p browser-lbl="Browser Label:"
echo Is %browser-lbl% Correct?
set /p browser-confirm="(Y/N): "
if %browser-confirm% == Y goto menu
if %browser-confirm% == N goto settings
:web
title BBrowser - Web
echo Please Set the Link you will Open in the browser (No Protocol, Can Be Subdomain like sub.example.com)
set /p link="Link: "
echo Sure, you will go to %link% in %browser-lbl%, now the protocol
set /p protocol="(Example: https) Protocol (Without ://): "
echo Going to %protocol%://%link% as %username% in %browser-lbl%, Hope see you back soon!
start %browser-lbl% %protocol%://%link%
:incognito
title BBrowser - Web (Incognito Mode)
echo Please Set the Link you will Open in the Browser (No Protocol, Can be Subdomain like sub.example.com)
set /p incognito-link="Link:"
echo Sure, you will go to %incognito-link% as %username% in %browser-lbl% as Incognito, now the protocol
set /p incognito-protocol="Protocol (Without ://, Example: https):"
echo Going to %incognito-protocol%://%incognito-link% in %browser-lbl% as Incognito
start %browser-lbl% %incognito-protocol%://%incognito-link% -incognito
















:tools-hub
title BBrowser - Tools Hub
echo BBrowser Tools
echo 1) RENAMER
echo 2) DELETER
echo 3) HTML Creator
echo 4) Return to BBrowser
set /p tools-selection="Select a Tool:"
if %tools-selection% == 1 goto renamer
if %tools-selection% == 2 goto deleter
if %tools-selection% == 3 goto html-gen
if %tools-selection% == 4 goto menu
:renamer
title BBrowser - RENAMER
echo Type the File you will rename
set /p renamer-file="File (you can drop too):"
echo ok, you will rename %renamer-file%, now type the new name (with file extension, otherwise it will broke!)
set /p file-rename="New Name for File:"
echo Renaming %renamer-file% to %file-rename%
RENAME %renamer-file% %file-rename%
echo Return to BBrowser?
set /p renamer-return="(Y/N):"
if %renamer-return% == Y goto menu
if %renamer-return% == N goto tools-hub
:deleter
title BBrowser - Deleter
echo Type the File you will Delete
set /p deleter-file="File:"
echo Deleting %file%
del %file%
echo Goodbye! Leaving...
exit
:html-gen
title BBrowser - HTML Editor
echo Type the Name of the HTML File (Without Filetype!)
set /p html-gen-name="File Name:"
echo What will be Inside %html-gen-name%?
set /p html-gen-content="File Content:"
echo Adding %html-gen-content% to %html-gen-name%
echo %html-gen-content >>%html-gen-name%.html
