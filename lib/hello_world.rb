# frozen_string_literal: true
require 'nokogiri'
require 'open-uri'
require 'linkedin-oauth2'
require_relative "hello_world/version"

module HelloWorld
  class Error < StandardError; end
  # Your code goes here...

  def self.greet(purl)

    LinkedIn.configure do |config|
      config.client_id     = ENV["86mjd6okd93bp6"]
      config.client_secret = ENV["kRUMH87BuVI8K6C9"]

      # config.redirect_uri  = "https://www.linkedin.com/in/"
    end

    oauth = LinkedIn::OAuth2.new("86mjd6okd93bp6","kRUMH87BuVI8K6C9")

    url = oauth.auth_code_url(purl)
    puts url
    # code = "AQQKs_aX5BvwoPLrZziawMVL4eQPI3QM8K4vhKQEKtvHY8U8ZQQR9nYn4mjjUBDf16bE83SR9_XQFeDJfsLNq96KpWZLxj1p8Y2qV5ViUEW7wiFfvjslmMDOQ-jHBj4UaizC0j5DjyC12q2UDIxDIIh5rg30Jd62gimDe-pBKV9wtcrN49X2TW27Oqr8E1nJozn99mLpiWbNoACZxjs"
    #
    access_token = oauth.get_access_token(url)
    #
    api = LinkedIn::API.new(access_token)
    me = api.profile
    puts me
  end
end

