Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root "departments#index"

  resources :departments do
    resources :items
  end
  # get "/departments", to: "departments#index"
  # get "/departments/:id", to: "departments#show"
  # get "/departments/new", to: "departments#new"
  # post "/departments,", to: "departments#create"

  # get "/departments/:id/edit", to: "departments#edit"
  # put "/departments/:id", to: "departments#update"
  # patch "/departments/:id", to: "departments#update"
  # delete "/departments/:id", to: "departments#destroy"

end
