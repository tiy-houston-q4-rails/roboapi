class CreateRobotMissions < ActiveRecord::Migration
  def change
    create_table :robot_missions do |t|
      t.references :robot, index: true
      t.references :mission, index: true

      t.timestamps
    end
  end
end
