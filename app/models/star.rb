class Star < ApplicationRecord
  belongs_to :detail
  belongs_to :user
end
