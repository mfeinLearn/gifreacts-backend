class EmotionSerializer
  include FastJsonapi::ObjectSerializer
  attribute :name
  has_many :gifs
  has_many :humer_types, through: :gifs
end
