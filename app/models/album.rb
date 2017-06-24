class Album < ActiveRecord::Base
  validates :title, :release_date, :musician, presence: true
  # has_many :tracks
end
