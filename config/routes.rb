Rails.application.routes.draw do
  get 'jstest/index'

  devise_for :users
  get 'todos/index', as: :todos

  post 'todos/create'
  
  get 'todos/edit/:id' => 'todos#edit', as: :todos_edit

  get 'todos/:id' => 'todos#show', as: :todo
  
  put 'todos/:id' => 'todos#update'
 
  patch 'todos/:id' => 'todos#update'
  
  delete 'todos/:id' => 'todos#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
