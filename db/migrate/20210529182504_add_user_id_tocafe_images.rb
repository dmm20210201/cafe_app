class AddUserIdTocafeImages < ActiveRecord::Migration[5.2]
  def change
    add_column :cafe_images, :user_id, :integer
  end
end
