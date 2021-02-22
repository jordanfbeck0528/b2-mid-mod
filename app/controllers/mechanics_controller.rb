class MechanicsController < ApplicationController
  def index
    @mechanics = Mechanic.all
    # require "pry"; binding.pry
  end

  def show
    @mechanic = Mechanic.find(params[:id])
  end
end
