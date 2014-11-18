class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :name
      t.boolean :classified
      t.date :mission_date

      t.timestamps
    end
  end
end
