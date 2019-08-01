class SubmissionsController < ApplicationController
    before_action :require_logged_in

  # action to display all submissions
  def index
    if params[:user_id]
      @submissions = User.find(params[:user_id]).submissions
    elsif params[:college_id]
        @submissions = College.find(params[:college_id]).submissions
    else
      @submissions = Submission.all
    end
  end

  # action to display a single submission
  def show
    @submission = Submission.find_by_id(params[:id])
  end

  #action to display new submission form
  def new
    @submission = Submission.new
    @statuses = Status.all
  end

def create
  @submission = current_user.submissions.build(submission_params)
  if @submission.valid?
    @submission.save
    redirect_to @submission
  else
    # raise @submission.errors.inspect
    render :new
  end
end

  def edit
    set_submission
    @college = College.find_by(id: params[:college_id])

      if @submission.user_id != current_user.id
      redirect_to colleges_path
      end
  end

  def update
    submission = Submission.find(params[:id])
    submission.update(submission_params)
    redirect_to submission
  end

  def destroy
       set_submission
       # if current_user.id == @submission.user_id
         @submission.destroy
         redirect_to submissions_path
       # end
     end

  private

  def submission_params
    params.require(:submission).permit(:user_id, :college_id, :deadline, :date_submitted, :degree, :program, :website, :status_id, :faculty, :application_cost, :lor)
  end

  def set_submission
    @submission = Submission.find_by_id(params[:id])
    if !@submission
      redirect_to submissions_path
    end
  end

end
