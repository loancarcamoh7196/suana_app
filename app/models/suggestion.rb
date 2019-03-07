class Suggestion < ApplicationRecord
  belongs_to :user

  #Enum para tipo de sugerencia
  enum type_s: [:preventa, :especial, :info]
end
