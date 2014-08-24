# Before

class ItemDecorator
  def initialize(item)
    @item = item
  end

  def method_missing(method_name, *args, &block)
    @item.send(method_name, *args, &block)
  end

  def respond_to_missing?(method_name, include_private = false)
    @item.respond_to?(method_name, include_private) || super
  end
end

# After

class ItemDecorator
  def initialize(item)
    @item = item
  end

   def status
     if @item.sold?
      "Sold at #{@item.sold_on.strftime('%A, %B %e')}"
    else
      "Available"
    end
  end

  def method_missing(method_name, *args, &block)
    @item.send(method_name, *args, &block)
  end

  def respond_to_missing?(method_name, include_private = false)
    @item.respond_to?(method_name, include_private) || super
  end
end
