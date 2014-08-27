# Before

describe Zombie do
  it 'raises a Zombie::NotSmartEnoughError if not able to make a decision' do
    zombie = Zombie.new
    begin
      zombie.make_decision!
    rescue Zombie::NotSmartEnoughError => e
      e.should be_an_instance_of(Zombie::NotSmartEnoughError)
    end
  end
end

# After

describe Zombie do
  it 'raises a Zombie::NotSmartEnoughError if not able to make a decision' do
    zombie = Zombie.new
    expect {zombie.make_decision!}.to raise_error(
      Zombie::NotSmartEnoughError
      )
  end
end
