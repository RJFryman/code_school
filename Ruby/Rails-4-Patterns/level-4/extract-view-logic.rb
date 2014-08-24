# Before

class ItemDecorator
  def initialize(item)

  end
end

# After

class ItemDecorator
  attr_reader :item
  
  def initialize(item)
    @item = item
  end

  def is_featured?
    item.ratings > 5
  end

  def method_missing(method_name, *args, &block)
    item.send(method_name, *args, &block)
	end

  def respond_to_missing?(method_name, include_private = false)
    item.respond_to?(method_name, include_private) || super
	end
end
