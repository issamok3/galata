class AddCategoryToContents < ActiveRecord::Migration[6.1]
  def change
    add_column :contents, :category, :integer
  end
end
