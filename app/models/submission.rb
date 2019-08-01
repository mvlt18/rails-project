class Submission < ApplicationRecord
  belongs_to :user
  belongs_to :college #, optional: true
  belongs_to :status

  validates :college_id, :program, :status_id, presence: true

  scope :recent, -> {order("submissions.updated_at DESC")}

  def self.accepted
    where(status_id: 4)
  end

end
