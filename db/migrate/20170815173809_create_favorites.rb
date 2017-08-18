class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :micropost, foreign_key: true

      t.timestamps
    end
    add_index :favorites, [:user_id, :micropost_id], unique: true
  end
end

=begin
  rails generate model Favorites user:references micropost:references
  により生成
  referenceとしたことにより、自動的にインデックスと外部参照つきのuser_id,micropost_idが作られているらしい
=end
