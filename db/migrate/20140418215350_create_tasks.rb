class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.integer :difficulty_level
      t.integer :project_id

      t.timestamps
    end
    add_index :tasks, [:project_id, :difficulty_level]
  end
end
