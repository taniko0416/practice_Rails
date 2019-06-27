Rails.application.routes.draw do
  get 'people/add'
  post 'people/add' , to: 'people#create'
  get 'people/index'
  get 'people', to:"people#index"
  get 'people/:id' , to:'people#show'
  get 'people/edit/:id' , to: 'people#edit'
  post 'people/edit/:id' , to: 'people#update'

  # データの更新の通信はPATCHを使用する
  patch 'people/edit/:id',to: 'people#update'
  
  get 'people/delete/:id',to: 'people#delete'


  get 'dengonban/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'helo/index'
  get 'helo' , to: 'helo#index'
  get 'hele/other'
  post 'helo' , to:'helo#index'
  post 'helo/index'
  
  get 'dengonban',to:'dengonban#index'
  post 'dengonban',to:'dengonban#index'
  get 'dengonban/index'
  post 'dengonban/index'

end
