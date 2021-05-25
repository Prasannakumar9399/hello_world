# frozen_string_literal: true
require 'nokogiri'
require 'open-uri'
require_relative "hello_world/version"

module HelloWorld
  class Error < StandardError; end
  # Your code goes here...

  def self.greet(url)
    doc = Nokogiri::HTML(open("#{url}","User-Agent"=>"Mac Safari 4","transfer-encoding"=>"chunked","content-type"=>"text/htm;","Content-Encoding"=>"gzip"))
    puts doc
  end
end

