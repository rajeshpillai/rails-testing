# WSL Rails Testing

##Install firefox

sudo apt-get update
sudo apt-get install -y firefox
https://github.com/mozilla/geckodriver/releases

wget https://github.com/mozilla/geckodriver/releases/download/v0.90.0/geckodriver-v0.90.0-linux64.tar.gz
tar zxvf geckodriver-v0.90.0-linux64.tar.gz
chmod +x geckodriver
sudo mv -f geckodriver /usr/local/share/geckodriver
sudo ln -s /usr/local/share/geckodriver /usr/local/bin/geckodriver
sudo ln -s /usr/local/share/geckodriver /usr/bin/geckodriver



## Setup Rails 

## To change driver to headless_*
#application_system_test_case.rb (change driver to headless_*:)

require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :headless_firefox
end

Run the test
rails test test/system/*