class CreateResults < ActiveRecord::Migration[7.2]
  def change
    create_table :results do |t|
      t.references :test, type: :uuid, foreign_key: true, null: false
      t.integer :student_number, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :summary_available, null: false
      t.integer :summary_obtained, null: false

      t.timestamps
    end
  end
end
