class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
      t.string :gender
      t.string :status
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
