class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
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
