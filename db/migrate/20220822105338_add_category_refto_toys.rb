class AddCategoryReftoToys < ActiveRecord::Migration[7.0]
  def change
    add_reference :toys, :category, null: false, foreign_key: true
  end
end
