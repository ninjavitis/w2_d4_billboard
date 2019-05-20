class Song < ApplicationRecord
  # belongs_to :Artist
  belongs_to :songboard, optional: true

  validates :artist_id, length: { minimum: 1 }, allow_nil: true
  validates :board_id, length: { minimum: 1 }, allow_nil: true
end
