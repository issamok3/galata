class AddBodyToContents < ActiveRecord::Migration[6.1]
  def change
    add_column :contents, :body, :text
  end
end
