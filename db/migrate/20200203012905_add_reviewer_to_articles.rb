class AddReviewerToArticles < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :reviewer, foreign_key: true, index: true
  end
end
