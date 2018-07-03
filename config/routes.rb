Rails.application.routes.draw do
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'books#index'

  get '/new', to: 'books#new'
  post '/', to: 'books#create'

  get '/:id', to: 'books#show'
  get '/:id/edit', to: 'book#edit'
  put '/:id', to: 'books#update'

  delete '/:id', to: 'books#destroy'
end
