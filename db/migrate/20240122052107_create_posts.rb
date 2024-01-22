class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title,          null: false
      t.text :text,             null: false
      t.text :text2
      t.text :text3
      t.text :recomemend,       null: false
      t.text :disappointed
      t.string :place,          null:false
      t.float :latitude
      t.float :longitude
      t.integer :prefecture_id, null: false
      t.references :user,       null: false, foreign_key: true
      t.timestamps
    end
  end
end
