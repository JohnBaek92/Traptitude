class Album < ActiveRecord::Base
  validates :title, :image_url, :release_date, :musician, presence: true
  has_many :tracks
end
