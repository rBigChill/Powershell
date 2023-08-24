#Function Prompt {"`n:)~ "}

# Import modules...
Import-Module $home\Documents\WindowsPowerShell\X
Import-Module $home\Documents\WindowsPowerShell\github
Import-Module $home\Documents\WindowsPowerShell\funcs
Import-Module $home\Documents\WindowsPowerShell\outlook

# Start my threads
Start-Job -FilePath $home\Documents\WindowsPowerShell\threads.ps1

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

function upgradechoc {choco upgrade all -y}
