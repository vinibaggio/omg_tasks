class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.text :username
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size
      t.datetime :photo_updated_at
      
      t.authenticatable :encryptor => :sha1
      t.confirmable

      t.timestamps
    end
    
    add_index :users, :username,                :unique => true
  end

  def self.down
    drop_table :users
  end
end
