require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get 'http://google.com'
driver.manage.window.maximize

puts driver.page_source

driver.quit