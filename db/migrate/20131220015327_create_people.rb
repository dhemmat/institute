class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :firstName
      t.string :middleName
      t.string :lastName
      t.string :secondLastName
      t.date :dateOfBirth
      t.boolean :bahaiStatus
      t.timestamps
    end
  end
end
