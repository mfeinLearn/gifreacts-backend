class Emotion < ApplicationRecord
  has_many :gifs
  has_many :humor_types, through: :gifs
end
