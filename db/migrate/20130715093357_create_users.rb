class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :description
      t.string :genre
      t.string :location
      t.float :rating

      t.timestamps
    end
  end
end
