class AddCategoryToDrinks < ActiveRecord::Migration[6.0]
  def change
    add_column :drinks, :category, :string
  end
end
