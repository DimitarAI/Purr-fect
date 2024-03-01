class BookingsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def index
    @bookings = Booking.all
    @my_pets_bookings = Booking.where(pet_id: current_user.pets.pluck(:id))
    @my_bookings = Booking.where(user_id: current_user.id)
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.pet = @pet
    @booking.status = "pending"
    if @booking.save
      redirect_to pet_path(@pet)
    else
      render "pets/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
