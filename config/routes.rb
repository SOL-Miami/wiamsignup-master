Rails.application.routes.draw do
  resources :newsletters do 
    get 'thank_you'
  end

  HighVoltage.configure do |config|
    config.home_page = 'home'
  end
end
