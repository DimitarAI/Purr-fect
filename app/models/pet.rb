class Pet < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  has_many :bookings, through: :users, dependent: :destroy

  validates :name, :address, :daily_pricing, presence: true
  validates :species, presence: true, inclusion: { in: %w[dog cat bird fish turtle hedgehog capybara] }
end
