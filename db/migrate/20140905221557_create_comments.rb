class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :link_id
      t.integer :commentable_id
      t.string :commentable_type
      t.timestamps
    end
  end
end
