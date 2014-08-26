# Before

FactoryGirl.define do
  factory :tweet do

  end
end

# After

FactoryGirl.define do
  factory :tweet do
    status 'Zombies'
    association :zombie
  end
end
