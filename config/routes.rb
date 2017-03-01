Rails.application.routes.draw do
	resources :jobs
  devise_for :users
  root "pages#home"
  get "pages/home"
end
