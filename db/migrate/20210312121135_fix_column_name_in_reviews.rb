class FixColumnNameInReviews < ActiveRecord::Migration[6.1]
  def change
    rename_column :reviews, :content, :feedback
  end
end
