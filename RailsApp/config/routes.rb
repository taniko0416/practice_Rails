Rails.application.routes.draw do
  get 'dengonban/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'helo/index'
  get 'helo' , to: 'helo#index'
  get 'hele/other'
  post 'helo' , to:'helo#index'
  post 'helo/index' 
end
