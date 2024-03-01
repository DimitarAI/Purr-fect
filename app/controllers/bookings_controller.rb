class BookingsController < ApplicationController
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

  def accept
    #@my_pets_bookings = Booking.where(pet_id: current_user.pets.pluck(:id))
    @my_pets_booking = Booking.find(params[:id])
    @my_pets_booking.status = "accepted"
    @my_pets_booking.save
    redirect_to dashboard_path
  end

  def decline
    @my_pets_booking = Booking.find(params[:id])
    @my_pets_booking.status = "declined"
    @my_pets_booking.save
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
