require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ClimbRails
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.log_level = :debug
    config.log_tags  = [:subdomain, :uuid]
    config.logger    = ActiveSupport::TaggedLogging.new(Logger.new(STDOUT))

    config.cache_store = :redis_store, ENV['CACHE_URL'],
                         { namespace: 'climb-rails::cache' }

    config.active_job.queue_adapter = :sidekiq
    config.api_only = true

    #config.session_store :cookie_store, key: '_interslice_session'
    #config.middleware.use ActionDispatch::Cookies
    #config.middleware.use config.session_store, config.session_options
  end
end
