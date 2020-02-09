class AddSafeToSupplements < ActiveRecord::Migration[6.0]
  def change
    add_column :supplements, :safe, :boolean, :default => true
  end
end
