class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :brand
      t.string :product
      t.string :url
      t.string :image_url

      t.timestamps null: false
    end
  end
end
