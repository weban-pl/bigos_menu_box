require_dependency "bigos_menu_box/application_controller"
module BigosMenuBox

  class Admin::ProductCategoriesController < ApplicationController

    def destroy
      @pc = BigosMenuBox::ProductCategory.find(params[:id])
      @pc.destroy

      redirect_to request.referer
    end

  end

end
