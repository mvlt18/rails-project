class Submission < ApplicationRecord
  belongs_to :user
  belongs_to :college #, optional: true

  enum status_type: [:draft, :applied, :accepted, :waitlisted, :rejected]

end
