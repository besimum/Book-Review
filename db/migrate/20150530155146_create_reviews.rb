class CreateReviews < ActiveRecord::Migration[4.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment

      t.timestamps null: false
    end
  end
end
