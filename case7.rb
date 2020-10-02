require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get ' https://itmscoaching.herokuapp.com/form'
driver.manage.window.maximize

driver.find_element(:id, "first-name").send_keys("iTMS")
driver.find_element(:id, "last-name").send_keys("Coaching")
driver.find_element(:id, "job-title").send_keys("QA")
driver.find_element(:id, 'radio-button-2').click
driver.find_element(:id, 'checkbox-1').click
driver.find_element(:xpath, '//*[@id="select-menu"]/option[3]').click
driver.find_element(:id, "datepicker").send_keys("05/25/2025")
driver.find_element(:link_text, 'Submit').click
 
driver.quit