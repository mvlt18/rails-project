module SubmissionsHelper

  def deadline_date(submission)
    submission.deadline.strftime("%d/%m/%Y") if submission.deadline.present?
  end

  def submitted_date(submission)
    submission.date_submitted.strftime("%d/%m/%Y") if submission.date_submitted.present?
  end
  
end
