class LocationsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_location, only: [:show, :edit, :update, :destroy, :fresh, :picked, :rejected]
  before_action :user_list, only: [:index, :show, :new, :edit, :update, :destroy]

  def index
    @locations = Location.all
    respond_to do |format|
      format.js
    end
    # @user_locations = policy_scope(location).where(:location_id => @location.id)
  end

# @users = (current_user.blank? ? User.all : User.find(:all, :conditions => ["id != ?", current_user.id]))
# @users = User.where.not(id: user)

  def show
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create location_data
    if @location.save == true
      redirect_to locations_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @location.update_attributes location_data
      redirect_to location_path(@location)
    else
      render :edit
    end
  end

  def destroy
    @location.delete
    redirect_to locations_path
  end

  def fresh
    @location_id = Location.find params[:id]
    @location.over_ride!
    # redirect_to locations_path
    # respond_to do |format|
    #   format.js
    # end
  end

  def picked
    @location_id = Location.find params[:id]
    @location.getting_picked!
    redirect_to locations_path
  end

  def rejected
    @location_id = Location.find params[:id]
    @location.rejecting!
    redirect_to locations_path
  end

private

  def user_list
    @user_list = User.where.not(id: current_user)
  end
  
  def find_location
    @location = Location.find params[:id]
  end

  def location_data
    params.require(:location).permit(:name, :address, :workflow_state, user_ids: [])
  end

end
# , :workflow_state













