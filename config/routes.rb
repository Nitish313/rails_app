Rails.application.routes.draw do
  get 'students/send_mail'

  get 'employees/index'

  get 'users/index'
  
  get 'home/index'
  
  resources 'images'
  
  resources 'people'
  
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
