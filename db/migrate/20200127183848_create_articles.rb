class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.text :lead
      t.text :image

      t.timestamps
    end
  end
end
