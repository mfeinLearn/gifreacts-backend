class HumerTypeSerializer
  include FastJsonapi::ObjectSerializer
  attributes
  has_many :gifs
  has_many :emotions, through: :gifs
end
