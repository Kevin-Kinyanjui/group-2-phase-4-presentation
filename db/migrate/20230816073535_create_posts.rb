class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :views
      t.integer :likes
      t.string :category
      t.string :status
      t.string :slug
      t.datetime :published_at

      t.timestamps
    end
  end
end
