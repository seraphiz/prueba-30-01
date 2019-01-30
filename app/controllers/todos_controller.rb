class TodosController < ApplicationController
    
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
        @todo = Todo.find(params[:id])
    end 

    def edit
        @todo = Todo.find(params[:id])
    end 

    def update
        todo = Todo.find(params[:id])
        todo.update(todo_params)
        redirect_to root_path, notice: 'Update Successful'
    end 

    def destroy
        todo = Todo.find(params[:id])
        todo.destroy
        redirect_to root_path, notice: 'Delete Sucessful'
    end 

    private

    def todo_params
        
        params.require(:todo).permit(:description)

    end

end
