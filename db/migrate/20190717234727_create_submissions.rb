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

      t.timestamps
    end
  end
end
