class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :intro
      t.string :reading_time
      t.string :thumbnail_url
      t.text :content

      t.timestamps
    end
  end
end
