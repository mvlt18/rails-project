class CreateSubmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :submissions do |t|
      t.integer :user_id
      t.integer :college_id
      t.datetime :deadline
      t.datetime :date_submitted
      t.string :degree
      t.string :program
      t.string :website
      t.boolean :status_id
      t.string :faculty
      t.integer :application_cost
      t.boolean :cv
      t.boolean :personal_statement
      t.boolean :lor
      t.boolean :scores
      t.boolean :transcript

      t.timestamps
    end
  end
end
