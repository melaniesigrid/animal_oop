require "./remover.rb"
require "./foods.rb"

class Animal
  attr_accessor :name, :id, :type, :number_of_legs, :owner, :visits
  def initialize(type, number_of_legs, name = "Unknown")
    @id = Random.rand(1..1000)
    @name = name
    @number_of_legs = number_of_legs
    @type = type
    @liked_food = NoFood.new()
    @visits = []
  end

  def owner=(owner)
    @owner = owner
    owner.animals.push(self) unless owner.animals.include?(self)
  end

  def likes_food?(food)
    @liked_food.is_liked?(food)
  end

  def speak
    "grrrr"
  end

  def speak
    if @type == "dog"
      "Woof, woof"
    elsif @type == "spider"
      "..."
    end
  end

  def bring_a_stick
    if @type == "dog"
      "Here is your stick: ---------"
    end
  end

  def make_a_web
    if @type == "spider"
      "www"
    end
  end

  def bring_a_stick
    if @type == "dog"
      "Here is your stick: ---------"
    end
  end

  def make_a_web
    if @type == "spider"
      "www"
    end
  end

  def remove_leg
    remover = Remover.new()
    @number_of_legs = remover.decrease(@number_of_legs)
  end
end
