class Post < ApplicationRecord
  validates :content, presence: true 
  validates :title, length: { minimum: 6, message: "Titel ist zu kurz!" }
  validates :title, uniqueness: true
  extend FriendlyId
  friendly_id :title, use: :slugged
end
