# WSL Installation / Setup Instructions:

These instructions are originally courtesy of Luke Cesario.


Follow the below tutorial to install python3.9, with one notable change. Replace step 3 with:
sudo apt install python3.9-venv
https://linuxize.com/post/how-to-install-python-3-9-on-ubuntu-20-04/#installing-python-39-on-ubuntu-with-apt

Optional Step (lets you just type python instead of python3.9):
https://linuxconfig.org/ubuntu-20-04-python-version-switch-manager

Remember to do python -V if you're unsure of what version you're currently using, and refer back to the above tutorial to set it to 3.9 if it's wrong.

Now, the following should work from the lab directory without issue:

python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
pip install -e .

Next, I ran the 'pytest' command and had to allow python3.9 through Windows Firewall for Domain Networks.
2/7 Tests pass on my correct implementation since I'm still missing google chrome and chromedriver in WSL.

Now, install google chrome by following my combination of these 2 tutorials below:
https://itsfoss.com/install-chrome-ubuntu/#install-chrome-terminal
https://linuxhint.com/install-dpkg-dependencies-automatically/

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt -f install
sudo dpkg -i google-chrome-stable_current_amd64.deb

Now, I have google chrome installed in WSL.
To get chromedriver installed, follow steps 1 and 3 of this tutorial with the changes listed below it:
https://tecadmin.net/setup-selenium-chromedriver-on-ubuntu/

New chromedriver download page: https://sites.google.com/chromium.org/driver/downloads?authuser=0

Check your chrome version with:
google-chrome --version
And download the corresponding version of chromedriver, making sure to get chromedriver_linux64.zip.

So far, google chrome keeps crashing while running the tests. 2/7 still pass.
