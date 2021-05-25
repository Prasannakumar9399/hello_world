# frozen_string_literal: true
require 'nokogiri'
require 'open-uri'
require 'mechanize'
require_relative "hello_world/version"

module HelloWorld
  class Error < StandardError; end
  # Your code goes here...

  def self.greet(url)
    doc = Nokogiri::HTML(open("#{url}"))
    puts doc
  end
end

