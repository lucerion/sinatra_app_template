# frozen_string_literal: true

require 'rubygems'
require 'bundler/setup'

Bundler.require(:default, ENV['RACK_ENV'])

Dir.glob('./app/{models,helpers,controllers}/*.rb').each(&method(:require))

require './config/settings'
