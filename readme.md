# Data Science Development Machine Setup (PowerShell)

## Why was this script created?

Because setting up a development machine with all the software you need is a very tedious task. To save me some time the next time I need to set up a machine I created this script. The script includes most of the software I need as a Data Scientist, and some other applications that I find useful/entertaining.

## What will be installed?
The following software will be installed. If something is not useful to you, simply comment out or remove the line installing that application/package.
- Pycharm Community
- Anaconda 3
- Git
- SourceTree
- Docker
- Putty
- Make
- NodeJS
- AWS-cli
- Sublime Text 3
- Google Chrome
- Spotify
- Adobe Reader
- 7-zip
- CCleaner
- Citrix Receiver
- Nvidia Cuda
- Theano (Python Package)
- Keras (Python Package)

## How to use

First, do the following two steps:
1. Start PowerShell in Administrator mode
2. Then, run the following command to give PowerShell the required access:

	Set-ExecutionPolicy Unrestricted

And finally the script can be executed by running:

	<path to script directory>\dev-machine-setup.ps1

## Other stuff needed to set up the machine

### Generate a SSH key
Open Git Bash and run:

	ssh-keygen -t rsa

Then open the private key in puttygen and add it to your keys in git, and possibly other places where it's needed.