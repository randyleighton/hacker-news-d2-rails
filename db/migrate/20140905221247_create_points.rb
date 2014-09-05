class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :link_id
      t.integer :point_amount
      t.timestamps
    end
  end
end
