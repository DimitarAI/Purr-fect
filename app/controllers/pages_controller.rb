class PagesController < ApplicationController
  def home
    if params[:query].present?
      @pets = Pet.search_by_name_and_species(params[:query])
    else
      @pets = Pet.all
    end
  end
end
