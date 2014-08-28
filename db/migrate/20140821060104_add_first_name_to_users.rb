class AddFirstNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :gender, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :mobile_number, :integer
    add_column :users, :address, :text
  end
end
