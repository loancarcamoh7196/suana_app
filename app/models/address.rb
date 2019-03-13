  class Address < ApplicationRecord
  belongs_to :township
  belongs_to :user

  enum building_type: %i[casa dpto]
end
