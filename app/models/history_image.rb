class HistoryImage < ApplicationRecord
  belongs_to :history
  attachment :image
end
