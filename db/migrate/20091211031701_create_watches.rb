class CreateWatchlists < ActiveRecord::Migration
  def self.up
    create_table :watches do |t|
      t.integer :user_id
      t.integer :task_list_id

      t.timestamps
    end
    add_index :watches, :user_id
    add_index :watches, :task_list_id
  end

  def self.down
    remove_index :watches, :task_list_id
    remove_index :watches, :user_id
    drop_table :watches
  end
end
