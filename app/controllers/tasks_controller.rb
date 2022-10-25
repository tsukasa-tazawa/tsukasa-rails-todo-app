class TasksController < ApplicationController
    before_action :current_user, only: [:destroy, :update]

    def new
        @task = Task.new
    end
    
    def index
        @tasks = current_user.tasks.all
    end

    def show
        @task = Task.find(params[:id])
    end

    def create
        @task = current_user.tasks.create(task_params)
        @task.save
        redirect_to current_user
    end

    def edit
        @task = Task.find(params[:id])
    end
    
    def update
        @task = Task.find(params[:id])
        @task.update(task_params)
        redirect_to current_user
    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to current_user
    end

    private
        def task_params
          params.require(:task).permit(:title, :content, :status)
        end
end
