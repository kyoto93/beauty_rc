class Genre < ApplicationRecord
  has_many :histories, dependent: :destroy
end
