::This version of the script has unigine heaven, valley, and superposition removed because their download servers are very slow
::install just-install
msiexec.exe /i https://just-install.github.io/stable/just-install.msi
::get latest just-install script
just-install update
::download custom install files from github
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/JacksonLegge/systemdownloader/master/just-install-v4.json -OutFile %TEMP%\just-install\just-install-v4.json"
::install programs from file downloaded from github
just-install hwinfo64 msi-afterburner cinebench-r20 furmark prime95 aida64
::update the just-install file to replace custom file, getting latest versions of official programs
just-install update
::add any additional packages to install at the end of the following line: 
just-install anydesk google-chrome chrome-remote-desktop-host steam mpc-hc notepad++ crystaldiskinfo crystaldiskmark cpu-z greenshot 7zip
pause