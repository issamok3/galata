class CreateContents < ActiveRecord::Migration[6.1]
  def change
    create_table :contents do |t|
      t.references :site, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :format

      t.timestamps
    end
  end
end
