class Dessert
  
  attr_accessor :name, :calories

  def initialize(name, calories)
    @name, @calories = name, calories
  end
  
  def healthy?
    if @calories < 200
      true
    end
  end
  
  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(name, calories, flavor)
    @flavor = flavor
  end
  
  def delicious?
    if @flavor == "black licorice"
      false
    else
      true
    end
  end
end
