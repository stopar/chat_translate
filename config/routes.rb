Rails.application.routes.draw do
  # devise_for :users
  
  get '/:locale'  => 'site#index'
  
  root "site#index"
  
  scope "/:locale" do 
    devise_for :users
  end
end
