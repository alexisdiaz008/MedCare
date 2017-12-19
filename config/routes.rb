Rails.application.routes.draw do
  
root 'pages#home'

devise_for :users, :controllers => {:sessions => "users/sessions"}
resources :user

get 'dashboard', to: 'pages#dashboard' , as: 'dashboard'

# devise_scope :user do
#   root :to => 'devise/sessions#new'
# end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
