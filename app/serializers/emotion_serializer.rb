class EmotionSerializer
  include FastJsonapi::ObjectSerializer
  attributes
  has_many :gifs
  has_many :humer_types, through: :gifs
end
