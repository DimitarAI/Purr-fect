class Pet < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  include PgSearch::Model
  pg_search_scope :search_by_name_and_species,
                against: [:name, :species],
                using: {
                  tsearch: { prefix: true },
                  trigram: {}
                }

  validates :name, :address, :daily_pricing, presence: true
  validates :species, presence: true, inclusion: { in: %w[dog cat bird fish turtle hedgehog capybara] }
end
