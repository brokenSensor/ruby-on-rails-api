Rails.application.routes.draw do
  resources :projects 
  
  post "/todos", to: "todos#create"
  patch "projects/:project_id/todo/:id", to: "todos#update"

end
