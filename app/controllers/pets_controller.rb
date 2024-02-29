class PetsController < ApplicationController
  before_action :set_pet, only: [:show]
  before_action :set_user, only: [:new, :create]

  def index
    @pets = Pet.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @pet = Pet.new
  end

  def create
    @user = current_user
    @pet = Pet.new(pet_params)
    @pet.user = @user

    if @pet.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :species, :description, :address, :daily_pricing, :user_id, photos: [])
  end

  def set_user
    @user = current_user
  end
end
