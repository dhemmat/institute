class CreateDevotionalAddresses < ActiveRecord::Migration
  def change
    create_table :devotional_addresses do |t|
    	t.belongs_to :devotional
    	t.belongs_to :address
      t.timestamps
    end
  end
end
