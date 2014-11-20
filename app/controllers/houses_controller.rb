class HousesController < ApplicationController
  def index
					@houses = House.all
  end

  def show
					@house = House.find(params[:id])
  end

  def new
					@house = House.new
  end

  def create
					@house = House.new(params[:house])
					if @house.save
									redirect_to houses_path
					else
									render :new
					end
  end

	def edit
	end

  def delete
  end

	def house_params
	end
end
