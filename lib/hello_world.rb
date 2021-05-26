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
    signin = "https://www.linkedin.com/authwall?trk=gf&trkInfo=AQFNZd8J-Zh7lwAAAXmrCvKgwd5qNkir2nikujG6ao_EPZnxgetQgXpA5J5GZ6UZvXnGDdhcUYzJPpQHPs8fGvtfhz65el29k8i8r6gIPgjC8Dn6eQzg22iqqOAKLXc3n7JAx7A=&originalReferer=&sessionRedirect=https%3A%2F%2Fwww.linkedin.com%2Fin%2Fkaran-vishwakarma-98286512a%2F"
    driver.navigate.to signin
    puts purl

  end
end

