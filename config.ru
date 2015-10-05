require 'rubygems'
require 'bundler'

Bundler.require

Dir.glob('./app/{models,helpers,controllers}/*.rb').each { |file| require file }

Sinatra::Base.settings.tap do |settings|
  settings.views = 'app/views'
  settings.public_folder = 'public'
end

map('/') { run ApplicationController }
