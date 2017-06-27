# == Schema Information
#
# Table name: annotations
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  track_id   :integer
#  body       :text
#  start_idx  :integer
#  end_idx    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Annotation < ActiveRecord::Base
  validates :user, :track, :body, :start_idx, :end_idx, presence: true

  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  belongs_to :track,
    primary_key: :id,
    foreign_key: :track_id,
    class_name: :Track
end
