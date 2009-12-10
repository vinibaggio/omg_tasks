class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.integer :task_list_id

      t.timestamps
    end
    
    add_index :tasks, :task_list_id
  end

  def self.down
    remove_index :tasks, :task_list_id
    drop_table :tasks
  end
end
