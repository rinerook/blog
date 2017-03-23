class Post < ApplicationRecord
  validates :title, :content, presence: true
  validates :title, length: { minimum: 6}
  validates :title, uniqueness: true
end
