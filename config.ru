require 'rubygems'
require 'bundler/setup'

Bundler.require(:default, ENV['RACK_ENV'])

Dir.glob('./app/{models,helpers,controllers}/*.rb').each(&method(:require))

Sinatra::Base.settings.tap do |settings|
  settings.views = 'app/views'
  settings.public_folder = 'public'
end

map('/') { run ApplicationController }
