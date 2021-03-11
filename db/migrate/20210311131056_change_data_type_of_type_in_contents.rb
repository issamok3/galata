class ChangeDataTypeOfTypeInContents < ActiveRecord::Migration[6.1]
  def change
    remove_column :contents, :type
    add_column :contents, :type, :string
  end
end
