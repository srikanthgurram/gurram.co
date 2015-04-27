require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PersonalSite
  class Application < Rails::Application
    config.assets.paths << Rails.root.join("vendor","assets", "images")

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Enable escaping HTML in JSON.
    config.active_support.escape_html_entities_in_json = true

    # Enable the asset pipeline
    config.assets.enabled = true

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'

    #Static assets
    config.serve_static_assets = true
  end
end
