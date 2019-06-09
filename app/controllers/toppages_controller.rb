class ToppagesController < ApplicationController
  def index
    if logged_in?
      @task = current_user.tasks.build  # form_with 用
      @tasks = current_user.tasks.order(id: :desc).page(params[:page])
      redirect_to controller: :tasks, action: :index
    end
  end
end
