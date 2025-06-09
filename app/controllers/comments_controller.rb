class CommentsController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @comment = @project.comments.build(comment_params.merge(user: current_user))

    if @comment.save
      redirect_to @project, notice: "Comment posted!"
    else
      redirect_to @project, alert: "Could not post comment."
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end