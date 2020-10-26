# Load Bundler and load all your gems
require "bundler/setup"

# Explicitly load any gems you need.
Dir['ktapp/*.rb'].each{ |file| require_relative file }

module Ktapp
  # Your code goes here...
  # Good place for your main application logic if this is a library.
  #
  # Create classes in the ktapp folder and
  # be sure to create unit tests for them too.
end
