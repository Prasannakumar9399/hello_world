# frozen_string_literal: true
require 'nokogiri'
require 'open-uri'
require_relative "hello_world/version"

module HelloWorld
  class Error < StandardError; end
  # Your code goes here...

  def self.greet(url)

    html = open("{url}").read
    nokogiri_doc = Nokogiri::HTML(html)
    puts nokogiri_doc
    end
  end

