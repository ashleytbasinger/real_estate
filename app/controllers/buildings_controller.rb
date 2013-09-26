class BuildingsController < ApplicationController
  def new
    @building = Building.new
  end

  def create
    @building = Building.new(building_params)

    if @building.save
      redirect_to buildings_path, notice: 'Recorded successfully'
    else
      render :new
    end
  end

  def index
    @buildings = Building.all
  end

  def show
  end

  def destroy
  end

  def edit
  end

  protected
  def building_params
    params.require(:building).permit(:street_address, :city, :state, :postal_code, :owner_id)
  end
end
