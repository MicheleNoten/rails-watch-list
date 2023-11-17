class Movie < ApplicationRecord
  has_many :bookmarks #, dependent: :destroy_async
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
