class HumerType < ApplicationRecord
  has_many :gifs
  has_many :emotions, through: :gifs
end
