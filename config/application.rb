# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsTesting
  # Application
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    config.autoload_paths << Rails.root.join('config', 'routes')
    config.i18n.load_path += Dir[Rails.root.join('config',
                                                 'locales',
                                                 '**',
                                                 '*.{rb,yml}')]
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')

    config.generators do |generate|
      generate.helper false
      generate.assets false
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
