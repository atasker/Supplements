class RemoveFaqFromSupplements < ActiveRecord::Migration[6.0]
  def change
    remove_column :supplements, :faq, :text
  end
end
