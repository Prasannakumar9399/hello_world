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
    driver.navigate.to purl
    puts purl

  end
end

