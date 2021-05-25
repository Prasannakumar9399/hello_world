# frozen_string_literal: true
require 'nokogiri'
require 'open-uri'
require_relative "hello_world/version"

module HelloWorld
  class Error < StandardError; end
  # Your code goes here...

  def self.greet(url)

    html = open("https://www.linkedin.com/in/harsh-kesarwani-519883134/")
    doc = Nokogiri::HTML(html)
    puts doc
    end
  end

