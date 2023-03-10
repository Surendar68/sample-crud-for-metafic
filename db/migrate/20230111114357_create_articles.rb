class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.string :author
      t.boolean :blog_active
      t.date :published_date

      t.timestamps
    end
  end
end
