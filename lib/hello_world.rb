# frozen_string_literal: true
require 'nokogiri'
require 'open-uri'
require_relative "hello_world/version"

module HelloWorld
  class Error < StandardError; end
  # Your code goes here...

  def self.greet(url)
    agent = Mechanize.new { |agent|
      agent.user_agent_alias = 'Mac Safari 4'
    }
    agent.follow_meta_refresh = true
    #visit page
    page = agent.get("#{url}")
    puts page
  end
end

