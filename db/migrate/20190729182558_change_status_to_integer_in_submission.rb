class ChangeStatusToIntegerInSubmission < ActiveRecord::Migration[5.2]
  def change
    change_column :submissions, :status, :integer
  end
end
