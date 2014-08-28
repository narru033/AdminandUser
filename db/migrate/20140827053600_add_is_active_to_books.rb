class AddIsActiveToBooks < ActiveRecord::Migration
  def change
    add_column :books, :is_active, :boolean
  end
end
