require_dependency "bigos_menu_box/application_controller"
module BigosMenuBox

  class Admin::ProductsController < ApplicationController

    def destroy
      @p = BigosMenuBox::Product.find(params[:id])
      @p.destroy

      redirect_to request.referer
    end

  end

end
