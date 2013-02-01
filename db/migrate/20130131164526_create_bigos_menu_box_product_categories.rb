class CreateBigosMenuBoxProductCategories < ActiveRecord::Migration
  def change
    create_table :bigos_menu_box_product_categories do |t|
      t.integer :bigos_menu_box_element_id
      t.integer :parent_product_category_id
      t.string :name
      t.string :type
      t.integer :position

      t.timestamps
    end
  end
end
