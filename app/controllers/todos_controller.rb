class TodosController < ApplicationController
    
    def index
        @todos = Todo.all
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
        @todo = Todo.find(params[:id])
    end 

    def edit
        @todo = Todo.find(params[:id])
    end 

    private

    def todo_params
        
        params.require(:todo).permit(:description)

    end

end
