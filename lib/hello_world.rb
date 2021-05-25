# frozen_string_literal: true
require 'nokogiri'
require 'open-uri'
require_relative "hello_world/version"

module HelloWorld
  class Error < StandardError; end
  # Your code goes here...

  def self.greet(url)
    # puts "Hello, #{name}! I'm Ruby"
    # URI.open("http://www.ruby-lang.org/") {|f|
    #   f.each_line {|line| p line}
    # }

    doc = Nokogiri::HTML(URI.open(url,"User-Agent"=> "Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; WOW64; Trident/6.0)"))
    puts doc
    doc.xpath('//*[@id="ember530"]/div[2]/div[2]/div/div[1]/h1').each do |temp|
      puts temp
      end
    end
  end

