class OwnersController < ApplicationController
  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)

    if @owner.save
      redirect_to new_owner_path, notice: 'Recorded successfully'
    else
      render :new
    end
  end

  protected
  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :email)
  end

  def set_owner
    @owner = Owner.find(params[:id])
  end
end
