class CreateReviewers < ActiveRecord::Migration[6.0]
  def change
    create_table :reviewers do |t|
      t.string :name
      t.string :title
      t.text :image
      t.text :bio

      t.timestamps
    end
  end
end
