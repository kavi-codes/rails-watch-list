class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  validates :title, :overview, presence: true
  validates :title, :overview, uniqueness: true

  searchkick
  # include PgSearch::Model
  # pg_search_scope :search_by_title,
  #   against: [ :title ],
  #   using: {
  #   tsearch: { prefix: true } # <-- now `superman batm` will return something!
  # }
end
