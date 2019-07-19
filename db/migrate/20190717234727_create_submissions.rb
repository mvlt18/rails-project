class CreateSubmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :submissions do |t|
      t.integer :user_id
      t.integer :college_id
      t.date :deadline
      t.string :degree
      t.string :program
      t. string :status
      t.string :faculty
      t.integer :application_cost
      t.date :date_submitted
      t.string :website
      t.string :app_username

      t.timestamps
    end
  end
end


# Material Model
# belongs_to :submission

# cv
# personal statement
# lor
# scores
# transcript
