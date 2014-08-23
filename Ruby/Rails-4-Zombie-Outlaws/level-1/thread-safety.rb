# Before

ZombieOutlaws::Application.configure do
  # config.threadsafe!
end

# After

ZombieOutlaws::Application.configure do
  config.cache_classes = true
  config.eager_load = true
end
