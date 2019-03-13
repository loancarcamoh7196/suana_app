  class Address < ApplicationRecord
  belongs_to :township
  belongs_to :user
  belongs_to :order

  enum building_type: %i[casa dpto]
end
