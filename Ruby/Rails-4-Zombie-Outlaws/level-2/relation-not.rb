# Before

Zombie.where('status != ?', 'outlaw')

# After

Zombie.where.not(status: 'outlaw')
