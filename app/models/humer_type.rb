class HumerType < ApplicationRecord
  has_many :gifs
  has_many :emotions, through: :gifs

  validates :range, presence: true

end
