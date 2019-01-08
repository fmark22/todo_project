class TodosController < ApplicationController
 before_action :authenticate_user!

  def index
    @todos = Todo.all
  end

  def create
    Todo.create(params.require(:todo).permit(:content, :user_id))
    redirect_to "/todos/index"
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def show
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    
    redirect_to "/todos/index"
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update(params.require(:todo).permit(:content, :user_id))
    redirect_to "/todos/index"
  end
end
