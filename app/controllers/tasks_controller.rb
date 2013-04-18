class TasksController < ApplicationController
  def index
    @user = User.find_by_userName(params[:userName])
    @tasks = @user.tasks

    respond_with @tasks
  end

  def show_for_username
     @tasks = User.find_by_userName(params[:userName]).tasks

    render "show"
  end

  def show
    @user = User.find(params[:user_id])
    @tasks = @user.tasks

    respond_with @tasks

  end

  def new
       @tasks = User.find(params[:user_id]).tasks.new

      respond_with @tasks
  end

  def create
      @tasks = Task.new(params[:task])
      @tasks.user = User.find(params[:user_id])

      respond_to do |format|
        if @tasks.save
          format.html { redirect_to user_tasks_path, :param => "#{@tasks}" , notice: 'Task was successfully created.' }
          format.json { render json: @tasks, status: :created, location: @tasks }
        else
          format.html { render action: "new" }
          format.json { render json: @tasks.errors, status: :unprocessable_entity }
        end
      end
  end

  def edit
    @tasks = Task.find(params[:id])

    respond_with @tasks
  end

  def update

  end
end
