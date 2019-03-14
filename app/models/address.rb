class Address < ApplicationRecord
  belongs_to :township
  belongs_to :user
  has_many :order

  enum building_type: %i[casa dpto]
end
