Rails.application.routes.draw do
  resources :projects 
  
  post "/todos", to: "todos#create"
  patch "projects/:project_id/todo/:id", to: "todos#update"
  delete "projects/:project_id/todo/:id", to: "todos#destroy"

end
