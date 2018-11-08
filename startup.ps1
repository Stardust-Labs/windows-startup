## Install chocolatey and the packages it controls
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

# core / critical
choco install firefox bitwarden googlechrome thunderbird 7zip -y

# sub-core / runtimes
choco install jre8 winrar python nodejs.install -y
refreshenv

# light utils
choco install sumatrapdf sublimetext3 notepadplusplus.install vscode -y

# medium / media utils
choco install vlc ccleaner gimp sqlite malwarebytes -y

# heavy utils
choco install jetbrainstoolbox putty.install androidstudio -y

# music
choco install musicbee audacity -y

# recreational
choco install discord steam goggalaxy twitch dolphin -y

# supplementary
choco install join.me godot flashplayerplugin -y

## Create some file architecture
$docs ~/Documents
mkdir "$docs/projects"
mkdir "$docs/scripts"
mkdir "$docs/scripts/python"
mkdir "$docs/scripts/javascript"
mkdir "$docs/scripts/cpp"
mkdir "$docs/scripts/dart"
