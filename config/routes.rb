Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "tasks/:id/mark_as_completed", to: "tasks#mark", as: :mark_as_completed
  # custom route to mark as completed without using another form
  # and having to leave the page as well!

  # Read all tasks
  # get 'tasks', to: 'tasks#index'

  # # Create one task (2 routes: One route is there to display the Task form: GET,
  # # and another one is there to handle the POST request generated when submitting this form.)
  # get 'tasks/new', to: 'tasks#new', as: 'new_task'
  # post 'tasks', to: 'tasks#create'

  # # # Read one task, has to be declared after the new & update, or you'll get params = {id: 'new'}
  # # Read one task (it's the show action)
  # get 'tasks/:id', to: 'tasks#show', as: "task"

  # # Update one task (2 routes: edit to find the task and get the form,
  # # update to actually update the task)
  # get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  # patch 'tasks/:id', to: 'tasks#update'

  # # Delete one task
  # # we want to be able to destroy tasks directly from the list
  # delete 'tasks/:id', to: 'tasks#destroy'
  resources :tasks
end
