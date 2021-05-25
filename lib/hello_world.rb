# frozen_string_literal: true
require 'nokogiri'
require 'open-uri'
require_relative "hello_world/version"

module HelloWorld
  class Error < StandardError; end
  # Your code goes here...

  def self.greet(url)
    URI.open("#{url}") {|f|
      f.each_line {|line| p line}
    }
  end
end

