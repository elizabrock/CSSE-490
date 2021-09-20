# WSL Installation / Setup Instructions:

These instructions are originally courtesy of Luke Cesario.

## Step 0: Run everything as admin

When turning on powershell, etc, for WSL, always choose to Run As Administrator

## Step 1: Install WSL 2

Follow the instructions here: https://docs.microsoft.com/en-us/windows/wsl/install-win10

## Step 2: Install Python 3.9

```
sudo apt update
sudo apt install software-properties-common build-essential
sudo apt install python3.9-venv python3.9-dev
python3.9 --version
```

Sources: [How to Install Python 3.9 on Ubuntu 20.04](https://linuxize.com/post/how-to-install-python-3-9-on-ubuntu-20-04/#installing-python-39-on-ubuntu-with-apt)

## Optional Step 3: (lets you just type python instead of python3.9) [Ubuntu 20.04 Python version switch manager](https://linuxconfig.org/ubuntu-20-04-python-version-switch-manager).

For step 3, I recommend the alternative of:
```
$ sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.9 1
```

Remember to do python -V if you're unsure of what version you're currently using, and refer back to the above tutorial to set it to 3.9 if it's wrong.

## Step 4: Check Your Basic Installation:

Now, the following should work from the lab directory without issue:

```
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
pip install -e .
```

Next, I ran the 'pytest' command and had to allow python3.9 through Windows Firewall for Domain Networks.

When running Lab 1, at this point 2/7 Tests passed on my correct implementation since we are still missing google chrome and chromedriver in WSL.

## Step 5: Install Google Chrome _in WSL_

Now, install google chrome by following my combination of these 2 tutorials below:
https://itsfoss.com/install-chrome-ubuntu/#install-chrome-terminal
https://linuxhint.com/install-dpkg-dependencies-automatically/

```
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt -y install ./google-chrome-stable_current_amd64.deb
```

Now, I have google chrome installed in WSL.

Check your chrome version with:
```
google-chrome --version
```
