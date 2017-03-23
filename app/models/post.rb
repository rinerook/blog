class Post < ApplicationRecord
  # validates :title, :content, presence: true # schon im frontend geprüft
  validates :title, length: { minimum: 6}
  validates :title, uniqueness: true
  extend FriendlyId
  friendly_id :title, use: :slugged
end
