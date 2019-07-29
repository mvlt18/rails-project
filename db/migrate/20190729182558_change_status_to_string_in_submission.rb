class ChangeStatusToStringInSubmission < ActiveRecord::Migration[5.2]
  def change
    change_column :submissions, :status, :string
  end
end
