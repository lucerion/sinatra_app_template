# frozen_string_literal: true

class ApplicationController < Sinatra::Base
  helpers ApplicationHelper

  get '/' do
    'Hello, World!'
  end
end
