require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get 'http://google.com'
driver.manage.window.maximize

driver.quit 