class History < ApplicationRecord
  belongs_to :genre
  has_many :history_images, dependent: :destroy
  accepts_attachments_for :history_images, attachment: :image
end
