require 'rubygems'
require 'bundler'
Bundler.require
port = ENV['PORT'] || 9292
require './lib/ngrok-rails'
use NgrokRails::Middleware, port: port
run lambda { |env| [200, { 'Content-Type' => 'text/plain'}, ["Ngrok=http://#{ENV['NGROK_SUBDOMAIN']}.ngrok.com"]] }
