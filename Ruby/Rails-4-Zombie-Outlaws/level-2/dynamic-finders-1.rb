# Before

Zombie.find_all_by_weapon('Chainsaw')

# After

Zombie.where(weapon: 'Chainsaw')
