Rails.application.routes.draw do

  # CREATE
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'


  # READ (ALL / ONE)
  # qual nome vai aparecer depois da url
  get 'tasks', to: 'tasks#index'
  # get 'task/:id', to: 'task#show', as: 'task'

  # READ (ALL / ONE)
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'


end
