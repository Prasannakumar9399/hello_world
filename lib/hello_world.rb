# frozen_string_literal: true
require 'nokogiri'
require 'open-uri'
require 'mechanize'
require_relative "hello_world/version"

module HelloWorld
  class Error < StandardError; end
  # Your code goes here...

  def self.greet(url)
    agent = Mechanize.new { |agent|
      agent.user_agent_alias = 'Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3'
    }
    agent.follow_meta_refresh = true
    agent.follow_meta_refresh = true
    #visit page
    page = agent.get("#{url}")
    puts page
  end
end

