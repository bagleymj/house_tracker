class HousesController < ApplicationController
  def index
					@houses = House.all
  end

  def show
					@house = House.find(params[:id])
  end

  def new
					@house = House.new
          @scores = []
          Category.all.each do |category| 
            score = @house.scores.new
            score.category_id = category.id
            @scores << score
          end
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
					@house = House.find(params[:id])
	end

	def update
					@house = House.find(params[:id])
					if @house.update_attributes(params[:house])
									redirect_to :action => :show, :id => @house.id
					else
									render :edit
					end
	end

  def destroy 
					@house = House.find(params[:id])
					@house.destroy
					redirect_to houses_path
  end

end
