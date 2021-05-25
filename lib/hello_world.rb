# frozen_string_literal: true
require 'nokogiri'
require 'open-uri'
require_relative "hello_world/version"

module HelloWorld
  class Error < StandardError; end
  # Your code goes here...

  def self.greet(url)
    uri = URI.parse(url)
    doc = Nokogiri::HTML(URI.open(uri,"User-agent"=> "Mozilla/5.0 (X11;U;Linux 2.4.2.-2 i586; en-us;m18) Gecko/200010131 Netscape6/6.01"))
    puts doc

    end
  end

