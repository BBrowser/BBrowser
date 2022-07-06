@echo off
title BBrowser
:menu
title BBrowser - Home
echo Welcome to BBrowser, A Simple Browser for Websites,\n Powered by Other Browsers
echo Select an Option (The Settings are Not Saved)
echo You first need to setup the Browser. Go to Settings > Browser
echo 1) Settings
echo 2) Browse The Web
set /p init="Put a Number"
if %init% == 1 goto settings
if %init% == 2 goto web
:settings
cls
title BBrowser - Settings
echo Options
echo 1) Set your Username
echo 2) Set Date And Time
echo 3) Set the Browser
echo 4) Return to menu
set /p settings-selection="Select an Option:"
if %settings-selection% == 1 goto usr-conf
if %settings-selection% == 2 goto date-conf
if %settings-selection% == 3 goto label
if %settings-selection% == 4 goto menu
:usr-conf
title BBrowser - Username
echo How do you want to be Named?
set /p username="Your Name:"
echo Hello, %username%, Is It Right?
set /p usr-confirm ="(Y/N) "
if %usr-confirm% == Y goto menu
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
echo Sure, you will go to %link% as %username% in %browser-lbl%, now the protocol
set /p protocol="(Example: https) Protocol (Without ://): "
echo Going to %protocol%://%link% as %username% in %browser-lbl%, Hope see you back soon!
start %browser-lbl% %protocol%://%link%
