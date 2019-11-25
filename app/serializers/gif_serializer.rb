class GifSerializer
  include FastJsonapi::ObjectSerializer
  attributes
  belongs_to :humer_type
  belongs_to :emotion
end
