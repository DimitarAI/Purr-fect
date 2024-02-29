class PetsController < ApplicationController
  before_action :set_pet, only: [:show]
  before_action :set_user, only: [:new, :create]

  def index
    if params[:query].present?
      @pets = Pet.search_by_name_and_species(params[:query])

    else
      @pets = Pet.all
    end
  end

    def show
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

  def search

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
