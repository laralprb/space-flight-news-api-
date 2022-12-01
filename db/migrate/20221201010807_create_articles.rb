class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.boolean :featured, :default =>  false
      t.string :title
      t.string :url
      t.string :imageUrl
      t.string :newsSite
      t.string :summary
      t.string :publishedAt
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
