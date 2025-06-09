class StatusChangesController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @status_change = @project.status_changes.build(status_change_params.merge(user: current_user))

    if @status_change.save!
      redirect_to @project, notice: "Status changed to: #{@status_change.status}"
    else
      redirect_to @project, alert: "Could not change status."
    end
  end

  private
  def status_change_params
    params.require(:status_change).permit(:status)
  end
end
