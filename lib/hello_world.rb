# frozen_string_literal: true
require 'nokogiri'
require 'open-uri'
require 'selenium-webdriver'

module HelloWorld
  class Error < StandardError; end
  # Your code goes here...


  def self.greet(purl)
    Selenium::WebDriver::Chrome.driver_path = "C://Users/SHRABAN/Downloads/chromedriver_win32/chromedriver.exe"
    driver = Selenium::WebDriver.for :chrome
    signin = "https://www.linkedin.com/"
    driver.navigate.to signin
    puts purl

  end
end

