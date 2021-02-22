class MechanicsController < ApplicationController
  def index
    @mechanics = Mechanic.all
    # require "pry"; binding.pry
  end
end
