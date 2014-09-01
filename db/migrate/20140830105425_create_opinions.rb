class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.references :user, index: true
      t.references :book, index: true
      t.boolean :like
      t.boolean :unlike

      t.timestamps
    end
  end
end
