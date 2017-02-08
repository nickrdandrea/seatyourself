class ReservationsController < ApplicationController
  before_action :load_user
  before_action :ensure_logged_in, only: [:create, :destroy]

  def index
    @reservations = Reservation.all
  end

  def show
    @reservations = Reservation.find(params[:id])
  end

  def new
    @reservations = Reservation.new
  end

  def edit
    @reservations = Reservation.find(params[:id])
  end


  def create
    @reservation = @restaurant.reservation.build(reservation_params)
    @reservation.user = current_user

    if @reservations.save
      redirect_to root_path
    else
      render :new
    end
  end


  def update
    @reservations = Reservation.find(params[:id])

    if @reservations.update_attributes(reservation_params)
      redirect_to root_path(@reservation)
    else
      render :edit
    end
  end


  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to root_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :time, :seats, :request)
  end


    def load_user
    @user = User.find(params[:product_id])
  end

end
