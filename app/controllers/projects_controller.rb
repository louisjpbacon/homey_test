class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @comment = Comment.new
    @status_change = StatusChange.new

    @conversation_feed = (
      @project.comments +
      @project.status_changes
    ).sort_by(&:created_at)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project, notice: 'Project was successfully created.'
    else
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end
end
