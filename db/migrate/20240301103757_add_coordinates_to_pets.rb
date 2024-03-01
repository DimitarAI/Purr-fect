class AddCoordinatesToPets < ActiveRecord::Migration[7.1]
  def change
    add_column :pets, :latitude, :float
    add_column :pets, :longitude, :float
  end
end
