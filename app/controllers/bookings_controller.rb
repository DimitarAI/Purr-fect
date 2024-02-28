class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @pet = Pet.find(params[:pet_id])
    @booking.pet = @pet
    if @booking.save
      redirect_to pet_path(@pet)
    else
      # @bookmark = Bookmark.new
      render "/", status: :unprocessable_entity
    end
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
