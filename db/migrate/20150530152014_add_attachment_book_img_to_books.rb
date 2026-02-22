class AddAttachmentBookImgToBooks < ActiveRecord::Migration[4.2]
  def self.up
    add_column :books, :book_img_file_name, :string
    add_column :books, :book_img_content_type, :string
    add_column :books, :book_img_file_size, :integer
    add_column :books, :book_img_updated_at, :datetime
  end

  def self.down
    remove_column :books, :book_img_file_name
    remove_column :books, :book_img_content_type
    remove_column :books, :book_img_file_size
    remove_column :books, :book_img_updated_at
  end
end
