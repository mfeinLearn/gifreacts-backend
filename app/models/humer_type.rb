class HumerType < ApplicationRecord
  has_many :gifs
  has_many :emotions, through: :gifs

  validates :range, presence: true
  validates :range, :inclusion => { :in => 1..5 }
  # , :message => "Must be between 1 to 5"

end
