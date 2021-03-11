class ChangeCategoryToTypeInContents < ActiveRecord::Migration[6.1]
  def change
    remove_column :contents, :category
    add_column :contents, :type, :integer
  end
end
