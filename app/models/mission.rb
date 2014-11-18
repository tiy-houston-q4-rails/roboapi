class Mission < ActiveRecord::Base
  has_many :robot_missions
  has_many :robots, through: :robot_missions

  validates :name, :mission_date, presence: true
end
