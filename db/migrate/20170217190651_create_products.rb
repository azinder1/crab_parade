class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :price, :string
    end
    create_table :reviews do |t|
      t.column :content, :string
      t.column :user_id, :integer
      t.column :rating, :integer
    end
  end
end
