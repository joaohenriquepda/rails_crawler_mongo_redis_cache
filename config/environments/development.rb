# frozen_string_literal: true

Rails.application.configure do
  # Settings specified here will take precedence /
  # over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false


  # config.cache_store = :redis_cache_store

  # config.cache_store = :redis_cache_store, { driver: :hiredis, namespace: "my-app", compress: true, url: "redis://redis:6379/0" }
  # config.session_store :cache_store, key: "inovamind"

  # config.cache_store = :redis_cache_store, { url: ENV['REDIS_URL'] }
  # config.cache_store = :redis_cache_store, { url: "redis://redis:6379/0" }
  #
  # config.cache_store = :redis_store, {
  #   expires_in: 1.hour,
  #   namespace: 'cache',
  #   redis: { host: 'redis', port: 6379, db: 1 },
  # }

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  # Run rails dev:cache to toggle caching.
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
end
