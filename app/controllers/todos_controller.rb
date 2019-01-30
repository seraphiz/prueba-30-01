class TodosController < ApplicationController
    before_action :set_todos, only: %i(show edit update destroy complete)
    
    def index
        @todos = Todo.order(:id)
    end

    def new
        @todo = Todo.new
    end

    def create
        todo = Todo.new(todo_params)
        todo.save
        redirect_to root_path, notice: 'ToDo add correctly!'
    end

    def show
        
    end 

    def edit
        
    end 

    def update
        
        @todo.update(todo_params)
        redirect_to root_path, notice: 'Description Update Successful'
    end 

    def destroy
        
        @todo.destroy
        redirect_to root_path, notice: 'Delete Sucessful'
    end 

    def complete
        
        @todo.completed = true
        @todo.save
        redirect_to root_path, notice: 'Congratulations!!!!!!!'
    end

    def list
        @completed_todos = Todo.where(completed: true)
        @uncompleted_todos = Todo.where(completed: false)
    end

    private

    def set_todos
        @todo = Todo.find(params[:id])
    end

    def todo_params
        
        params.require(:todo).permit(:description)

    end

end
