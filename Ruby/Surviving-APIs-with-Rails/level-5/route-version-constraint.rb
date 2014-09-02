# Before

SurvivingRails::Application.routes.draw do
  scope defaults: { format: 'json' } do
    scope module: :v1, constraints: ... do # Task 2
      resources :zombies
    end
    scope module: :v2, constraints: ... do # Task 3
      resources :zombies
    end
  end
end

# After

require 'api_version'

SurvivingRails::Application.routes.draw do
  scope defaults: { format: 'json' } do
    scope module: :v1, constraints: ApiVersion.new('v1') do
      resources :zombies
    end
    scope module: :v2, constraints: ApiVersion.new('v2', true) do
      resources :zombies
    end
  end
end
