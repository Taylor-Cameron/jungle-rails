require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'is not valid without a password_digest' do
      @user = User.new({
      first_name: 'first',
      last_name: 'last',
      email: 'email@email.com',
      password: nil,
      password_confirmation: nil
      })
    expect(@user).to_not be_valid
    end

    it 'is not valid without an email' do
      @user = User.new({
      first_name: 'first',
      last_name: 'last',
      email: nil,
      password: 'password',
      password_confirmation: 'password'
      })
    expect(@user).to_not be_valid
    end

    it 'is not valid if password and password_confirmation are not equal' do
      @user = User.new({
      first_name: 'first',
      last_name: 'last',
      email: 'email@email.com',
      password: 'password',
      password_confirmation: 'pass'
      })
    expect(@user).to_not be_valid
    end
  end
end