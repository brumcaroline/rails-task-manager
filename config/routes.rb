Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Read all tasks
  get 'tasks', to: 'tasks#index'

  # Create a restaurant
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # Read one task details
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Update/Edit a restaurant
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # Delete a restaurant
  delete 'tasks/:id', to: 'tasks#destroy'
end
