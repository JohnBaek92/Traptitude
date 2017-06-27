class Album < ActiveRecord::Base
  validates :title, :release_date, :musician, presence: true

  has_many :tracks,
    primary_key: :id,
    foreign_key: :album_id,
    class_name: :Track

  has_attached_file :image, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
