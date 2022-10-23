# frozen_string_literal: true

Sinatra::Base.settings.tap do |settings|
  settings.views = 'app/views'
  settings.public_folder = 'public'
end
