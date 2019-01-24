class ApplicationController < Sinatra::Base
  helpers ApplicationHelper

  get '/' do
    'Hello, World!'
  end
end
