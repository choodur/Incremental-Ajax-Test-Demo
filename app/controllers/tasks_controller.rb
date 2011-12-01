class TasksController < ApplicationController

  def index
    @tasks = []
    (1..9).each do |num|
      @tasks[num] = ["Task #{num}"]
    end

    @length = @tasks.length
  end

  def increment
    @task = params[:task]
    render :json => { task: @task }
  end
end

