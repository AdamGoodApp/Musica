class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :author_id
      t.datetime :date
      t.text :description

      t.timestamps
    end
  end
end
