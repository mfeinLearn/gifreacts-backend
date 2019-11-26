class HumerTypeSerializer
  include FastJsonapi::ObjectSerializer
  attribute :range
  has_many :gifs
  has_many :emotions, through: :gifs
end
