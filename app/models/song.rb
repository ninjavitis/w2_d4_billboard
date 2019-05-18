class Song < ApplicationRecord
  # belongs_to :Artist
  belongs_to :Board, optional: true

  validates :artist_id, length: { minimum: 1 }, allow_nil: true
end
