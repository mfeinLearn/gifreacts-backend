class GifSerializer
  include FastJsonapi::ObjectSerializer
  attribute :name
  belongs_to :humer_type
  belongs_to :emotion

end
