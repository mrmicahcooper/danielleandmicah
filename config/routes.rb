Rails.application.routes.draw do
  root to: "pages#home"

  get 'thanks', to: "pages#thanks"

  resources :reservations, only: [:create, :index]
end
