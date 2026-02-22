class AddBookIdToReviews < ActiveRecord::Migration[4.2]
  def change
    add_column :reviews, :book_id, :integer
  end
end
