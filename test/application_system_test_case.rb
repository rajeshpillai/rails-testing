require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  #driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
  
  #driven_by :selenium, using: :headless_chrome do |option|
  #  option.add_argument("no-sandbox")
  #end
  #
  driven_by :selenium, using: :headless_firefox
end
