module BigosApp

  class BigosMenuBoxElement < PageElement
    attr_accessible :is_admin_visible, :name, :type, :page_id, :position, :product_category_attributes
    has_one :product_category, :dependent => :destroy, :class_name => "BigosMenuBox::ProductCategory"
    after_save :add_product_category

    accepts_nested_attributes_for :product_category

    def add_product_category
      self.product_category = BigosMenuBox::ProductCategory.create if self.product_category.blank?
    end

    def self.class_name
      "Restaurant Menu"
    end

    def name
      self.product_category.name
    end

    def render
      "bigos_menu_box/module/item"
    end

    def admin_render
      "bigos_menu_box/module/admin/item"
    end


  end

end
