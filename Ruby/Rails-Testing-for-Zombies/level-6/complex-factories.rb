# Before

FactoryGirl.define do
  factory :zombie do
    name 'Ash'
    graveyard 'Petrosville'

    # Add sally and moe here

  end
end

# After

FactoryGirl.define do
  factory :zombie do
    name 'Ash'
    graveyard 'Petrosville'

    factory :sally do
      name 'Sally'
      graveyard 'Valley Dim'
    end

    factory :moe do
      name 'Moe'
    end
  end
end
