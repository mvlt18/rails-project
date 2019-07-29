class RemoveColumnsFromSubmissionModel < ActiveRecord::Migration[5.2]
  def change
    remove_column :submissions, :personal_statement
    remove_column :submissions, :scores
    remove_column :submissions, :transcript
    remove_column :submissions, :cv
  end
end
