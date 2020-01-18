class RemoveCategoryFromSupplements < ActiveRecord::Migration[6.0]
  def change
    remove_column :supplements, :category, :integer
  end
end
