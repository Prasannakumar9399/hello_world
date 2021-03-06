# frozen_string_literal: true

require_relative "lib/hello_world/version"

Gem::Specification.new do |spec|
  spec.name          = "hello_world"
  spec.version       = HelloWorld::VERSION
  spec.authors       = ["Prasannakumar"]
  spec.email         = ["keeponfightingpj1995@gmail.com"]

  spec.summary       = "This is hello gem"
  spec.description   = "This is for understanding concept og gem"
  spec.homepage      = "https://github.com/Prasannakumar9399/hello_world.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] ="https://github.com/Prasannakumar9399/hello_world.git"
  spec.metadata["source_code_uri"] = "https://github.com/Prasannakumar9399/hello_world.git"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
