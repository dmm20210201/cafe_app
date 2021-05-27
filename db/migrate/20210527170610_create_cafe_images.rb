class CreateCafeImages < ActiveRecord::Migration[5.2]
  def change
    create_table :cafe_images do |t|
      t.string :shop_name
      t.string :image_id
      t.text :caption

      t.timestamps
    end
  end
end
