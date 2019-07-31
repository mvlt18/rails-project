class ChangeStatusToIntegerInSubmission < ActiveRecord::Migration[5.2]
  def change
    change_column :submissions, :status_id, :integer
  end
end
