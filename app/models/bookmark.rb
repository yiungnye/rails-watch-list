class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, presence: true
  validates :comment, length: { minimum: 6 }
  validates :list, presence: true
  validates_uniqueness_of :movie_id, scope: :list_id
end
