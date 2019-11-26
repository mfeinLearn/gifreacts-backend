class GifSerializer
  include FastJsonapi::ObjectSerializer
  attribute :name
  belongs_to :humer_type, serializer: HumerTypeSerializer
  belongs_to :emotion, serializer: EmotionSerializer

end
