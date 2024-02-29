class Pet < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  include PgSearch::Model
  pg_search_scope :name_and_spieces, against: [:name, :species]

  validates :name, :address, :daily_pricing, presence: true
  validates :species, presence: true, inclusion: { in: %w[dog cat bird fish turtle hedgehog capybara] }
end
