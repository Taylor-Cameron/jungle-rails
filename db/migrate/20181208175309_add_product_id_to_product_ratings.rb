class AddProductIdToProductRatings < ActiveRecord::Migration
  def change
    add_column :product_ratings, :product_id, :integer
  end
end
