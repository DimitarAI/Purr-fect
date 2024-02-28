class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @pet = Pet.find(params[:pet_id])
    # @user = User.find(params[:booking][:user_id])
    @booking = Booking.new(booking_params)
    # @booking.user = @user
    @booking.pet = @pet
    if @booking.save
      redirect_to pet_path(@pet)
    else
      # @bookmark = Bookmark.new
      render "/", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :user_id, :pet_id)
  end
end
