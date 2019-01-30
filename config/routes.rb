Rails.application.routes.draw do
  get '/todos/list', to: 'todos#list', as: 'lista/todos'
  #resources :todos
  get '/todos', to: 'todos#index'
  get '/todos/new', to: 'todos#new', as: 'new/todos'
  post '/todos', to: 'todos#create', as: 'create/todos'
  get '/todos/:id', to: 'todos#show', as: 'todo'
  get '/todo/:id/edit', to: 'todos#edit', as: 'edit_todo'
  patch '/todos/:id', to: 'todos#update'
  delete '/todos/:id', to: 'todos#destroy', as: 'delete/todo'
  patch '/todos/:id/complete', to: 'todos#complete', as: 'complete/todos'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'todos#index'
end
