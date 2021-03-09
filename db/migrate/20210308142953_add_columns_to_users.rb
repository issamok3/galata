class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_column :users, :full_name, :string
    add_column :users, :address, :string
    add_column :users, :age, :integer
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :locatable, :boolean, default: false
  end
end
