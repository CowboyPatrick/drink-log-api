class RemoveTypeFromDrinks < ActiveRecord::Migration[6.0]
  def change
    remove_column :drinks, :type, :string
  end
end
