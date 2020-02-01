class AddAuthorToSupplements < ActiveRecord::Migration[6.0]
  def change
    add_reference :supplements, :author, foreign_key: true, index: true
  end
end
