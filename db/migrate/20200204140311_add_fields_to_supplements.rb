class AddFieldsToSupplements < ActiveRecord::Migration[6.0]
  def change
    add_column :supplements, :description, :text
    add_column :supplements, :function, :text
    add_column :supplements, :instructions, :text
    add_column :supplements, :benefits, :text
    add_column :supplements, :dangers, :text
    add_column :supplements, :bullets, :text
    add_column :supplements, :faq, :text
    add_column :supplements, :sources, :text
  end
end
