class City < ApplicationRecord
  belongs_to :country
  has_many :sights, dependent: :destroy
end
