class CreateAddposts < ActiveRecord::Migration[5.2]
  def change
    create_table :addposts do |t|
      t.text :keyword4, null: false
      t.text :keyword5
      t.text :keyword6
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
      t.timestamps
    end
  end
end
