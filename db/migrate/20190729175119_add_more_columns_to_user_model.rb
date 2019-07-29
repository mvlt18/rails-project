class AddMoreColumnsToUserModel < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :undergrad_college_name, :string
    add_column :users, :undergrad_major, :string
    add_column :users, :undergrad_minor, :string
    add_column :users, :undergrad_gpa, :float
    add_column :users, :grad_college_name, :string
    add_column :users, :grad_degree, :string
    add_column :users, :grad_gpa, :float
    add_column :users, :gre_scores, :string
    add_column :users, :gmat_scores, :string
    add_column :users, :experience, :text

  end
end
