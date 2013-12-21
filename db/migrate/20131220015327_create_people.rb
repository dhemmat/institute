class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :second_last_name
      t.string :nickname
      #t.belongs_to :dateOfBirth
      t.boolean :bahaiStatus
      t.timestamps
    end
  end
end
