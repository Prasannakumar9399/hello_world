# frozen_string_literal: true
require 'nokogiri'
require 'open-uri'
require 'selenium-webdriver'

module HelloWorld
  class Error < StandardError; end
  # Your code goes here...


  def self.greet(purl)
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to purl
    puts url

  end
end

