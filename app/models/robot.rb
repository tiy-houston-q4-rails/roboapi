class Robot < ActiveRecord::Base
  has_many :robot_missions
  has_many :missions, through: :robot_missions
  mount_uploader :photo, PhotoUploader

  validates :name, :photo, presence: true
end
