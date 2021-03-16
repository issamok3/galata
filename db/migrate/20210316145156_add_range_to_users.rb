class AddRangeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :range, :integer, default: 5
  end
end
