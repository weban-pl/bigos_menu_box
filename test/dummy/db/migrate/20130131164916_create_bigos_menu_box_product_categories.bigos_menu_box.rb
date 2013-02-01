# This migration comes from bigos_menu_box (originally 20130131164526)
class CreateBigosMenuBoxProductCategories < ActiveRecord::Migration
  def change
    create_table :bigos_menu_box_product_categories do |t|
      t.integer :product_element_id
      t.integer :parent_product_category_id
      t.string :name
      t.string :type
      t.integer :position

      t.timestamps
    end
  end
end
