require File.expand_path('../boot', __FILE__)

require 'action_controller/railtie'

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module Example
  class Application < Rails::Application
    config.encoding = "utf-8"
  end
end
