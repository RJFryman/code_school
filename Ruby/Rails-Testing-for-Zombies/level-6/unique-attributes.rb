# Before

FactoryGirl.define do
  factory :zombie do
    name 'Ash'
    graveyard 'Petrosville Cemetary'
  end
end

# After

FactoryGirl.define do
  factory :zombie do
    sequence(:name) { |i| "Ash#{i}"}
    sequence(:graveyard){ |i| "Petrosville Cemetary#{i}" }
  end
end
