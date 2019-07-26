class Submission < ApplicationRecord
  belongs_to :user
  belongs_to :college #, optional: true
  # accepts_nested_attributes_for :college, reject_if: :all_blank

  def submission_count
    submission.count
  end
end
