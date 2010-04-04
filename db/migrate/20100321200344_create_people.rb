class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string  :name
      t.string  :image_file_name
      t.string  :image_content_type
      t.integer :image_file_size
      t.text    :description
      t.timestamps
    end
  end
    
  def self.down
    drop_table :people
  end
end
