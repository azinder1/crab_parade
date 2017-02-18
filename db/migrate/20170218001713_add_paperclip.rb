class AddPaperclip < ActiveRecord::Migration[5.0]
  def change
    add_attachment :products, :product_picture
  end
end
