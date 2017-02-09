class RestaurantsController < ApplicationController
  before_action :load_user
  before_action :ensure_logged_in, only: [:create, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = @category.restaurants.build(restaurant_params)
    @restaurant.owner = current_user

    if @restaurant.save
      redirect_to restaurants_url
    else
      render :new
    end
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update_attributes(restaurant_params)
      redirect_to restaurant_url(@restaurant)
    else
      render :edit
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_url
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone, :menu, :image, :description, :capacity, :website, :category_id)
  end

  def load_user
    @user = User.find(params[:user_id])
  end
end
