class PagesController < ApplicationController
  def home
    @pets = Pet.all
  end
end
