# frozen_string_literal: true

require_relative "hello_world/version"

module HelloWorld
  class Error < StandardError; end
  # Your code goes here...

  def self.greet(name)
    puts "Hello, #{name}! I'm Ruby"
  end
end
