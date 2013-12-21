class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
    	t.string :address
    	t.belongs_to :neighborhood
      t.timestamps
    end
  end
end
