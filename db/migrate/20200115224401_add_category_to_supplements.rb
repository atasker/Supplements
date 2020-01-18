class AddCategoryToSupplements < ActiveRecord::Migration[6.0]
  def change
    add_reference :supplements, :category, foreign_key: true, index: true
  end
end
