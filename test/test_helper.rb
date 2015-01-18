require 'bundler/setup'
require 'minitest/autorun'
if ENV["TRAVIS"]
  require 'coveralls'
  Coveralls.wear!
end
require 'simplecov'
ENV["RAILS_ENV"] = "test"
SimpleCov.start('rails') if ENV["COVERAGE"]

Bundler.require

MiniTest::Unit.autorun

class TestCase < MiniTest::Unit::TestCase
end
