class AddCategoryToSites < ActiveRecord::Migration[6.1]
  def change
    add_column :sites, :category, :string
  end
end
