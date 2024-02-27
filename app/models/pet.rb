class Pet < ApplicationRecord
  belongs_to :user

  validates :name, :address, :daily_pricing, presence: true
  validates :species, presence: true, inclusion: { in: %w[dog cat bird fish turtle hedgehog capybara] }
end
