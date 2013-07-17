class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :user_id
      t.string :image_upload
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
