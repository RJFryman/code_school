# Before

Game = Struct.new(:name, :year, :system)

# After

Game = Struct.new(:name, :year, :system) do
  def to_s
    "#{name} - #{year} - #{system}"
  end
end
