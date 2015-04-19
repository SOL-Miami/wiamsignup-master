Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :newsletters do 
    get 'thank_you'
  end

  HighVoltage.configure do |config|
    config.home_page = 'home'
  end
end
