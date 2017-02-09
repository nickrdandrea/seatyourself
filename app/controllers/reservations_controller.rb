class ReservationsController < ApplicationController
  # before_action :load_user
  before_action :ensure_logged_in, only: [:create, :destroy]

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = Reservation.new
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end


  def create
    @reservation = @restaurant.reservation.build(reservation_params)
    @reservation.user = current_user

    if @reservation.save
      redirect_to root_url
    else
      render :new
    end
  end


  def update
    @reservation = Reservation.find(params[:id])

    if @reservation.update_attributes(reservation_params)
      redirect_to root_url(@reservation)
    else
      render :edit
    end
  end


  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to root_url
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :time, :seats, :request)
  end


  # def load_user
  #   @user = User.find(params[:product_id])
  # end

end
