class CreateProductRatings < ActiveRecord::Migration
  def change
    create_table :product_ratings do |t|
      t.integer :user_id
      t.string :description
      t.integer :rating

      t.timestamps null: false
    end
  end
end
