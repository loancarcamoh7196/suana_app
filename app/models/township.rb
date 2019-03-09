class Township < ApplicationRecord
  belongs_to :region
  has_many :addresses
end
