class CreateRobots < ActiveRecord::Migration
  def change
    create_table :robots_data do |t|
    t.string :robot_name
    t.text :robot_description
    t.text :team
    t.string :color
    t.string :robot_type
    t.string :fuel

    t.timestamps null: false
    end
  end
end
