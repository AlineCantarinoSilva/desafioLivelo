require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'

Capybara.configure do |c|
    c.default_driver = :selenium_chrome
    c.default_max_wait_time = 20
end

