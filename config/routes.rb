Rails.application.routes.draw do


  get 'welcome/index'
  resources :employee_tables do
    resources :employee_details
    resources :employee_locations
  end
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "employee_tables/new" => "employee_tables#new"
  
end
