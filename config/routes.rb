Rails.application.routes.draw do
  get '/todos', to: 'todos#index'
  get '/todos/new', to: 'todos#new'
  post '/todos', to: 'todos#create', as: 'create/todo'
  get '/todos/:id', to: 'todos#show', as: 'todo'
  get '/todo/:id/edit', to: 'todos#edit', as: 'todo/edit'
  patch '/todos/:id', to: 'todos#update'
  delete '/todos/:id', to: 'todos#destroy', as: 'todo/delete'
  patch '/todos/:id/complete', to: 'todos#complete', as: 'complete/todos'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'todos#index'
end
