class CreateOwnersdogs < ActiveRecord::Migration
  def change
    create_table :ownersdogs do |t|
      t.integer :owner_id, null:false
      t.integer :dog_id, null:false

      t.timestamps
    end
  end
end
