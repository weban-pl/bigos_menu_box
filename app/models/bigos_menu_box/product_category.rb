module BigosMenuBox
  class ProductCategory < ActiveRecord::Base
    attr_accessible :name, :parent_product_category_id, :position, :bigos_menu_box_element_id, :type,
                    :subcategories_attributes, :products_attributes
    has_many :subcategories, :foreign_key => :parent_product_category_id, :class_name => "BigosMenuBox::ProductCategory", :dependent => :destroy
    has_many :products, :dependent => :destroy

    accepts_nested_attributes_for :subcategories, :products
  end
end
