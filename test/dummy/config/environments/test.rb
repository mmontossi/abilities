Rails.application.configure do
  config.cache_classes = true
  config.eager_load = false
  config.serve_static_files = true
  config.consider_all_requests_local = true
  config.action_controller.perform_caching = false
  config.action_dispatch.show_exceptions = false
  config.action_controller.allow_forgery_protection = false
  config.active_support.deprecation = :stderr

  config.action_mailer.perform_caching = false
  config.action_mailer.delivery_method = :test
end
