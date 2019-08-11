class College < ApplicationRecord
  has_many :submissions
  has_many :users, through: :submissions


  scope :submissions_count, -> {
    select('colleges.*, COUNT(submissions.college_id) AS submissions_count')
    .joins(:submissions)
    .group('colleges.id')
    .order('submissions_count DESC')
    .limit(2)
  }

end
