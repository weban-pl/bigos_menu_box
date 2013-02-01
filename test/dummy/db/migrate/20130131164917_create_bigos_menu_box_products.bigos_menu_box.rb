# This migration comes from bigos_menu_box (originally 20130131164850)
class CreateBigosMenuBoxProducts < ActiveRecord::Migration
  def change
    create_table :bigos_menu_box_products do |t|
      t.integer :product_categoty_id
      t.string :name
      t.text :description
      t.float :price
      t.string :type
      t.integer :position

      t.timestamps
    end
  end
end
