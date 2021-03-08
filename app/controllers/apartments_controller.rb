class ApartmentsController < ApplicationController
  
  def index 
    @apartments = Apartment.all
  end

  def new
    @apartment = Apartment.new
    @building = Building.pluck(:id, :name) #Pluck busca todos los registros del edificio
  end

  def create 
  end

end
