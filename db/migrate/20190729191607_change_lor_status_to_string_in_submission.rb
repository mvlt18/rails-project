class ChangeLorStatusToStringInSubmission < ActiveRecord::Migration[5.2]
  def change
    change_column :submissions, :lor, :text
  end
end
