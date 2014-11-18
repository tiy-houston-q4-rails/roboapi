class RobotMission < ActiveRecord::Base
  belongs_to :robot
  belongs_to :mission
end
