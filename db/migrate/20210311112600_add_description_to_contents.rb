class AddDescriptionToContents < ActiveRecord::Migration[6.1]
  def change
    add_column :contents, :description, :text
  end
end
