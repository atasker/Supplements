class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :title
      t.text :image

      t.timestamps
    end
  end
end
