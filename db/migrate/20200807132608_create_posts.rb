class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :image
      t.string :animal
      t.string :food
      t.string :aura_color
      t.text :keyword1, null: false
      t.text :keyword2
      t.text :keyword3
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
