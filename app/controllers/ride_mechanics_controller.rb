class RideMechanicsController < ApplicationController
  def index
    @ride_mechanics = RideMechanic.all
    # require "pry"; binding.pry
  end
end
