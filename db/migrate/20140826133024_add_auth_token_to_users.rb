class AddAuthTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :authauthenticity__token, :string
  end
end
