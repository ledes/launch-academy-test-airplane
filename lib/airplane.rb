require 'pry'

class Airplane

  attr_reader :type, :wing_loading, :horsepower, :engine
  attr_accessor  :flying, :fuel
  def initialize(type, wing_loading, horsepower, fuel)
    @type = type
    @wing_loading = wing_loading
    @horsepower = horsepower
    @engine = 'off'
    @flying = false
    @fuel = fuel
  end

  def land
    if fuel> 50
      if @engine == 'on'&& @flying == false
        'airplane already on the ground'
      elsif @engine == 'on' && @flying == true
        @fuel -= 50
        'airplane landed'
      else
        'airplane not started, please start'
      end
    else
      'Not enought fuel for landing, prepare to die'
    end
  end


  def takeoff
    if fuel > 50
      if @engine ==  'off'
        "airplane not started, please start"
      else
        @flying = true
        @fuel -= 50
        "airplane launched"
      end
    else
      "not enought fuel"
    end
  end


  def start
    if fuel > 20
      if @engine == 'off'
        @engine = 'on'
        @fuel -= 20
       'airplane started'

      else
       'airplane already started'
      end
    else
      "not enought fuel"
    end
  end
end
