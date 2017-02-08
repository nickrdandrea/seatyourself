<<<<<<< HEAD
class ReservationsController < ApplicationController

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
    @reservations = Reservation.new(reservation_params)

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

end
