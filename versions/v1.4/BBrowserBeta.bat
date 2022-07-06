:settings
cls
title BBrowser - Settings
echo Options
echo 1) Set your Username
echo 2) Set the Browser
echo 3) Return to menu
set /p settings-selection="Select an Option:"
if %settings-selection% == 2 goto label
if %settings-selection% == 3 goto menu
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
:incognito
title BBrowser - Web (Incognito Mode)
echo Please Set the Link you will Open in the Browser (No Protocol, Can be Subdomain like sub.example.com)
set /p incognito-link="Link:"
echo Sure, you will go to %incognito-link% as %username% in %browser-lbl% as Incognito, now the protocol
set /p incognito-protocol="Protocol (Without ://, Example: https):"
echo Going to %incognito-protocol%://%incognito-link% in %browser-lbl% as Incognito
start %browser-lbl% %incognito-protocol%://%incognito-link% -incognito
