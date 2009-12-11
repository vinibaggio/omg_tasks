class CreateTaskLists < ActiveRecord::Migration
  def self.up
    create_table :task_lists do |t|
      t.boolean :shared, :default => false
      t.integer :user_id

      t.timestamps
    end
    add_index :task_lists, :user_id
  end

  def self.down
    remove_index :task_lists, :user_id
    drop_table :task_lists
  end
end
