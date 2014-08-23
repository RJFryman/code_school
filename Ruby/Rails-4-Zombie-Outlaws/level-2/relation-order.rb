# Before

Zombie.order('name DESC, killed_on DESC')

# After

Zombie.order(name: :desc, killed_on: :desc)
