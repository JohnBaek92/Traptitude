# == Schema Information
#
# Table name: tracks
#
#  id       :integer          not null, primary key
#  album_id :integer          not null
#  title    :string           not null
#  features :string
#  producer :string
#  lyrics   :text             not null
#

class Track < ActiveRecord::Base
  validates :title, :lyrics, :album_id, presence: true

  belongs_to :album,
    primary_key: :id,
    foreign_key: :album_id,
    class_name: :Album

  has_many :annotations,
    primary_key: :id,
    foreign_key: :track_id,
    class_name: :Annotation
end
