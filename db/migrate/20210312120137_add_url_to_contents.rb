class AddUrlToContents < ActiveRecord::Migration[6.1]
  def change
    add_column :contents, :url, :string
  end
end
