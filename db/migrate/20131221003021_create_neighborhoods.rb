class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.belongs_to :sector
      t.timestamps
    end
  end
end
