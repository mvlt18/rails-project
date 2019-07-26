class SubmissionsController < ApplicationController
    before_action :require_logged_in
    # before_action :user_submission_match

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
  end

  def create
    if current_user
      @user = current_user
      @submission = @user.submissions.build(submission_params)
        if @submission.save
          redirect_to @submission
        end
    else
      redirect :new
    #   raise @submission.errors.inspect
    end
  end


  # def edit
  #   set_submission
  # end
  #
  # def update
  #   submission = Submission.find(params[:id])
  #   submission.update(submission_params)
  #   redirect_to submission
  # end

  private

  def submission_params
    params.require(:submission).permit(:user_id, :college_id, :deadline, :date_submitted, :degree, :program, :website, :status, :faculty, :application_cost, :cv, :personal_statement, :lor, :scores, :transcript)
  end

  def set_submission
    @submission = Submission.find_by_id(params[:id])
    if !@submission
      redirect_to submissions_path
    end
  end

end
