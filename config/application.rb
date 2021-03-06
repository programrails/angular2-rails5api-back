require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Angular2Rails5apiBack
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        # https://github.com/cyu/rack-cors/issues/44
        # resource '*', :headers => :any, :methods => [:get, :post, :options]
        resource '*', :headers => :any, :methods => [:get, :post, :put, :patch, :delete, :options]
      end
    end

    config.i18n.default_locale = :ru
        
  end
end
