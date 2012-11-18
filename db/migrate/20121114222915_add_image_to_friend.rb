class AddImageToFriend < ActiveRecord::Migration
  def change
    add_column :friends, :image, :string
  end
end
