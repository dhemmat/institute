class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.belongs_to :country
      t.string :name
      
      t.timestamps
    end
  end
end
