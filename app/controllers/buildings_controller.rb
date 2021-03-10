class BuildingsController < ApplicationController
  def index
    @buildings = Building.all
  end

  def new
    @building = Building.new
     @apartment = Apartment.pluck(:id, :name)
  end

  def show
    @building = Building.find(params[:id]) #Paréntesis es opcional
  end
end

def create
  @building = Building.new(params[:name])

  respond_to do |format|
    if @building.save
      format.html { redirect_to @building, notice: "Building was successfully created." }
      format.json { render :show, status: :created, location: @building }
    else
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @building.errors, status: :unprocessable_entity }
    end
  end

  
  private
  def set_building
    @building = Building.find(params[:id])
  end
  #Strong params
  def building_params
    params.require(:building).permit(:name)
  end
end