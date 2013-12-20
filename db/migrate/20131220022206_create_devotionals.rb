class CreateDevotionals < ActiveRecord::Migration
  def change
    create_table :devotionals do |t|
   		t.string :description
      t.timestamps
    end
  end
end
