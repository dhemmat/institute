class CreateDevotionalParticipants < ActiveRecord::Migration
  def change
    create_table :devotional_participants do |t|
    	t.belongs_to :person
    	t.belongs_to :devotional
    	t.boolean :is_host
      t.timestamps
    end
  end
end
