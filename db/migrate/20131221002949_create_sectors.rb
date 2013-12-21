class CreateSectors < ActiveRecord::Migration
  def change
    create_table :sectors do |t|
      t.string :name
      t.belongs_to :city
      t.timestamps
    end
  end
end
