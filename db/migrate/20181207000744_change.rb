class Change < ActiveRecord::Migration
  def change
    rename_column :users, :hashed_pass, :password_digest
  end
end
