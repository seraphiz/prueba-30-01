Rails.application.routes.draw do
  get '/todos', to: 'todos#index'
  get 'todos/new', to: 'todos#new'
  post '/todos', to: 'todos#create', as: 'create/todo'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'todos#index'
end
