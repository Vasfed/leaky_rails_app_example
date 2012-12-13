Example::Application.configure do
  config.cache_classes = false
  config.whiny_nils = true

  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.active_support.deprecation = :log
end
