#!/usr/bin/env ruby

require "bundler"
Bundler.require

Dotenv.load ".env"
rbot = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV["consumer_key"]
  config.consumer_secret = ENV["consumer_secret"]
  config.access_token = ENV["access_token"]
  config.access_token_secret = ENV["access_token_secret"]
end

print "input  message:"
msg = STDIN.gets

rbot.update(msg)

