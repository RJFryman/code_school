# Before

module ZombieOutlaws
  class Application < Rails::Application
    config.time_zone = 'Central Time (US & Canada)'
    config.action_view.embed_authenticity_token_in_remote_forms = false
  end
end

# After

module ZombieOutlaws
  class Application < Rails::Application
    config.time_zone = 'Central Time (US & Canada)'
    config.action_view.embed_authenticity_token_in_remote_forms = true
  end
end
