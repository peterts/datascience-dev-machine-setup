# Chocolatey
iex ((new-object net.webclient).DownloadString('http://bit.ly/psChocInstall'))

# Development tools
cinst pycharm-community -y
cinst anaconda3 -y
cinst git -y
cinst sourcetree -y
cinst docker -y
cinst putty.install -y
cinst make -y
cinst nodejs.install -y
cinst awscli -y
cinst sublimetext3 -y
cinst sublimetext3.powershellalias -y

# Other applications -y
cinst chrome -y
cinst spotify -y
cinst adobereader -y 
cinst 7zip.install -y
cinst ccleaner -y
cinst citrix-receiver -y

# Install applications not found in choco
$source = $PSScriptRoot + '\tmp' 

If (!(Test-Path -Path $source -PathType Container)) {New-Item -Path $source -ItemType Directory | Out-Null} 

$packages = @( 
    @{title='Cuda';url='https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda_9.0.176_win10-exe';Arguments='';Destination=$source+"\cuda_9.0.176_win10.exe"} 
    ) 


foreach ($package in $packages) { 
    $packageName = $package.title 
    $destinationPath = $package.Destination

    If (!(Test-Path -Path $destinationPath -PathType Leaf)) { 
        # Download the package
        Write-Host "Downloading $packageName to folder '$source'" 
        $webClient = New-Object System.Net.WebClient 
        $webClient.DownloadFile($package.url,$destinationPath)

        # Install the package
        $Arguments = $package.Arguments 
        Write-Output "Installing $packageName" 
        Invoke-Expression -Command "$destinationPath $Arguments"  
    } 
}

# Python packages
conda install theano
pip install keras

# Add anaconda to path
$PATH = [Environment]::GetEnvironmentVariable("PATH")
$anaconda_path = "C:\tools\Anaconda3\Scripts"
[Environment]::SetEnvironmentVariable("PATH", "$anaconda_path;$PATH")

# Configure git. Change this to your email and name
$name = Read-Host -Prompt "Please enter your name (used for git config)"
git config --global user.name $name
$email = Read-Host -Prompt "Please enter your email (used for git config)"
git config --global user.email $email
