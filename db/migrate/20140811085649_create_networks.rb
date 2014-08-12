class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string :network
      t.string :category
      t.integer :user_id
      t.timestamps
    end
  end
end
