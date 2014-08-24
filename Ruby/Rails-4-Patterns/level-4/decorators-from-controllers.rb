# Before

class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
end

# After

class ItemsController < ApplicationController
  def index
    ItemDecorator.build_collection(Item.all)
  end
end
