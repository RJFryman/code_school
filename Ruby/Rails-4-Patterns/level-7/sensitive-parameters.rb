# Before

class Rails4Patterns::Application
  # hiding other config for brevity...
  config.filter_parameters += [:password]
end

# After

class Rails4Patterns::Application
  # hiding other config for brevity...
  config.filter_parameters += [:password, :security_answer]
end
