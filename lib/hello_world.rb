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
      config.scope = "r_liteprofile"
      config.redirect_uri  = "https://www.linkedin.com/in/"
    end

    oauth = LinkedIn::OAuth2.new("86mjd6okd93bp6","kRUMH87BuVI8K6C9")

    url = oauth.auth_code_url
    puts url

    code = "AQQjYhlToCQF8g52WPVdqdnzepJH1jeDhrg1x3WRFUqOth646FER6gcwpJtZ0GwhuiWaTorIMVBhJ4NtZw7fFOnaDLoQpQXiBtcuX0xzbu6WWBpHDR5nR-LV2YBcOxci4QMrDrJy6JIhAWGtmb3gnLccI8ajx0liXz552zpCdX2Y_XIpYBh045XTdvs_vrypi_XdfK0Y-zWxzOa1Mso&state=ePhdJXSLXg2Wi3E0bZhDiyFnpI6IR4gTA%2F5VEMdgslg%3D"
    #
    access_token = oauth.get_access_token(code)
    #
    api = LinkedIn::API.new(access_token)
    me = api.profile
    puts me
  end
end

