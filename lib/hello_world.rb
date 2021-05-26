# frozen_string_literal: true
require 'nokogiri'
require 'open-uri'
require_relative "hello_world/version"

module HelloWorld
  class Error < StandardError; end
  # Your code goes here...

  def self.greet(url)
    URI.open("https://www.linkedin.com/in/?code=AQQKs_aX5BvwoPLrZziawMVL4eQPI3QM8K4vhKQEKtvHY8U8ZQQR9nYn4mjjUBDf16bE83SR9_XQFeDJfsLNq96KpWZLxj1p8Y2qV5ViUEW7wiFfvjslmMDOQ-jHBj4UaizC0j5DjyC12q2UDIxDIIh5rg30Jd62gimDe-pBKV9wtcrN49X2TW27Oqr8E1nJozn99mLpiWbNoACZxjs&state=someRandomString
"){|f|}
    URI.open("#{url}") {|f|
      f.each_line {|line| p line}
    }
  end
end

