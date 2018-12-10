require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'is not valid without a name' do
      @product = Product.new({
      name: nil,
      price: 1,
      quantity: 1
      })
    expect(@product).not_to be_valid
    end

    it 'is not valid without a price' do
      @product = Product.new({
      name: 'Item',
      price: nil,
      quantity: 1
      })
    expect(@product).not_to be_valid
    end

    it 'is not valid without a quantity' do
      @product = Product.new({
      name: 'Item',
      price: 1,
      quantity: nil
      })
    expect(@product).not_to be_valid
    end
  end
end