class GifSerializer
  include FastJsonapi::ObjectSerializer
  attribute :name
  # belongs_to :humer_type
  # belongs_to :emotion

  attribute :humer_type_range do |object|
    # byebug
    if object.humer_type
      object.humer_type.range
    end
  end

  attribute :emotion_name do |object|
    # byebug
    if object.emotion
      object.emotion.name
    end
  end

end
