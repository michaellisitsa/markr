class CreateTests < ActiveRecord::Migration[7.2]
  def change
    create_table :tests, id: false, primary_key: :student_number do |t|
      ## Custom primary key https://www.jdeen.com/blog/custom-primary-keys-in-ruby-on-rails
      t.string :id, primary_key: true
      t.timestamps
      t.index :id, unique: true
    end
  end
end
