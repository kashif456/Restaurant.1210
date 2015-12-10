class RestaurantsController < ApplicationController
  #validates :name,  presence: true
  #before_action :authenticate_user!
  #before_action :authenticate_user!, only: :new
  #before_action :authenticate_user!, except: [:new, :show]

  before_action :authenticate_user!, only: [:new, :edit, :destroy]


  def index
    @restaurant = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reservation = @restaurant.reservation.all
  end

  
  def create
      @restaurant = Restaurant.new(restaurant_params
        # name: params[:restaurant][:name],
        # description: params[:restaurant][:description],
        # phone: params[:restaurant][:phone],
        # address: params[:restaurant][:address]
    )


    if @restaurant.save
      redirect_to action: :show, id: @restaurant.id
    else
      redirect_to action: :new
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update

      @restaurant = Restaurant.find(params[:id])
      if @restaurant.update_attributes(restaurant_params)
        redirect_to action: :show, id: @restaurant.id
      else
        redirect_to action: :update, id: @restaurant.id
      end

      #@restaurant.find(params[:restaurant][:attributes])
      #@restaurant = Restaurant.find_by(params[:id])
      #if @restaurant.update!(params[:attributes])
      #if @restaurant.update_attributes(params[:restaurant][:attributes])
  end

  def destroy
    #@restaurant = Restaurant.find[params[:restaurant][:attributes]]
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to action: :index
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :description, :phone,
                                   :address)
    end
end
