class TodosController < ApplicationController
    before_action :set_todo, only: %i[ update ]
  
    # POST /todos
    def create
      @todo = Todo.new(todo_params)
  
      if @todo.save
        render json: @todo, status: :created, location: @todos
      else
        render json: @todo.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH /projects/:project_id/todo/:id
    def update
      if @todo.update(todo_params)
        render json: @todo
      else
        render json: @todo.errors, status: :unprocessable_entity
      end
    end
  
    private
      def set_todo
        @todo = Todo.find_by(:project_id => params[:project_id], :id => params[:id])
      end
  
      def todo_params
        params.require(:todo).permit(:text,:isCompleted, :project_id)
      end
  end
  