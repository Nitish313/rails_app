Rails.application.routes.draw do
  get 'students/send_mail'

  get 'employees/index'

  get 'users/index'
  
  resources 'images'
  
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
