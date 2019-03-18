class Address < ApplicationRecord
  belongs_to :township
  belongs_to :user
  has_many :order, dependent: :destroy

  enum building_type: %i[casa dpto]
end
