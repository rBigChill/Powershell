# Set shell prompt
Function prompt {"`n$(gl)`n`n:)~ "}

# Import personal modules
Import-Module $home\Documents\WindowsPowerShell\Internet
Import-Module $home\Documents\WindowsPowerShell\Github
Import-Module $home\Documents\WindowsPowerShell\Functions
Import-Module $home\Documents\WindowsPowerShell\Outlook
Import-Module $home\Documents\WindowsPowerShell\Work
Import-Module $home\Documents\WindowsPowerShell\Variables
Import-Module $home\Documents\WindowsPowerShell\Dash

# Pull the most recent files from github for profile
cd $home\Documents\WindowsPowerShell\
pull
cc

# Update applications 
Function update {
    winget upgrade --silent --all --include-unknown --accept-package-agreements --accept-source-agreements --force --disable-interactivity
}

# Update choco application
Function wupdate {
    C:\Users\cisne\AppData\Local\Microsoft\WindowsApps\Winget.exe upgrade --silent --all --include-unknown --accept-package-agreements --accept-source-agreements --force --disable-interactivity
}
