Rails.application.routes.draw do
  # get '/', controller: 'home', action: 'index'
  root 'home#index'

 
  resources :vehicles#, only: %i[ index new create show edit update ]

  # resources :vehicles, only: [:index, :new, :create, :show, :edit, :update, :destroy]


  #  get '/vehicles', controller: 'vehicles', action: 'index'

  #  get '/vehicles/new', controller: 'vehicles', action: 'new'

  #  post '/vehicles', controller: 'vehicles', action: 'create'

  #  get '/vehicles/:id', controller: 'vehicles', action: 'show'

  #  get '/vehicles/:id/edit', controller: 'vehicles', action: 'edit'

  #  put '/vehicles/:id', controller: 'vehicles', action: 'update'
  #  patch '/vehicles/:id', controller: 'vehicles', action: 'update'

  #  delete '/vehicles/:id', controller: 'vehicles', action: 'destroy'
end

# C - Create
# R - Read
# U - Update
# D - Delete
# 7 ações
