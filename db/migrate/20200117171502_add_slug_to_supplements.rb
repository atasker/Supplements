class AddSlugToSupplements < ActiveRecord::Migration[6.0]
  def change
    add_column :supplements, :slug, :string
    add_index :supplements, :slug, unique: true
  end
end
