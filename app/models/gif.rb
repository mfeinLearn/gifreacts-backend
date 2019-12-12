class Gif < ApplicationRecord
  belongs_to :humer_type
  belongs_to :emotion
  validates :name, presence: true
end
