class AddAuthorToArticles < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :author, foreign_key: true, index: true
  end
end
