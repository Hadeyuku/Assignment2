Rails.application.routes.draw do
  # get 'todolists/new', as: 'new_todolist'
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'top' => 'homes#top'
  # post 'todolists' => 'todolists#create'
  # get 'todolists' => 'todolists#index', as:'index_todolist'
  # get 'todolists/:id' => 'todolists#show', as: 'todolist'
  # get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
  # patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'
  # delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_todolist'
  resources :books
end
