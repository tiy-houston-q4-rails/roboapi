class CreateRobots < ActiveRecord::Migration
  def change
    create_table :robots do |t|
      t.string :name
      t.string :skills
      t.string :photo

      t.timestamps
    end
  end
end
