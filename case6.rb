require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get 'http://google.com'
driver.manage.window.maximize

element = driver.find_element :name => "q"
element.send_keys "iTMS Coaching!"
element.submit

puts driver.title

driver.quit