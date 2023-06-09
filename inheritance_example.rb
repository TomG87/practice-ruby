class Vehicle
def initialize
  @speed = 0
  @direction = 'north'
end

def brake
  @speed = 0
end

def accelerate
  @speed += 10
end

def turn(new_direction)
  @direction = new_direction
end

end

class Car < Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new 

car.accelerate
car.brake
car.honk_horn

p car

bike = Bike.new

bike.accelerate
bike.brake
bike.ring_bell

p bike

