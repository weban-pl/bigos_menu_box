BigosMenuBox::Engine.routes.draw do

  namespace :admin do
    resources :products, :product_categories
  end

end
