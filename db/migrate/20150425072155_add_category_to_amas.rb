class AddCategoryToAmas < ActiveRecord::Migration
  def change
    add_column :amas, :category, :string
  end
end
