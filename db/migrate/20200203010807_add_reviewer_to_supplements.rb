class AddReviewerToSupplements < ActiveRecord::Migration[6.0]
  def change
    add_reference :supplements, :reviewer, foreign_key: true, index: true
  end
end
