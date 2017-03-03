Rails.application.routes.draw do
  devise_for :users
  resources :jobs

  get "/users/:user_id/jobs", to: "jobs#for_user"

  root "pages#home"
  get "pages/home"
end
