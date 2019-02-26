class Region < ApplicationRecord
    has_many :townships, dependent: :delete_all
end
