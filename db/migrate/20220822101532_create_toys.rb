class CreateToys < ActiveRecord::Migration[7.0]
  def change
    create_table :toys do |t|
      t.string :title
      t.string :description
      t.decimal :price
      t.decimal :age
      t.string :condition

      t.timestamps
    end
  end
end
