class Emotion < ApplicationRecord
  has_many :gifs
  has_many :humer_types, through: :gifs
end
