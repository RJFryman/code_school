# Before

TwitterForZombies::Application.routes.draw do

end

# After

TwitterForZombies::Application.routes.draw do
  root to: 'zombies#index'
end
