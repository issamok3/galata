class RemoveBodyFromContents < ActiveRecord::Migration[6.1]
  def change
    remove_column :contents, :body
  end
end
