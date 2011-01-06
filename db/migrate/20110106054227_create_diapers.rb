class CreateDiapers < ActiveRecord::Migration
  def self.up
    create_table :diapers do |t|
      t.string :type
      t.integer :note_id
      t.datetime :diaper_change_time

      t.timestamps
    end
  end

  def self.down
    drop_table :diapers
  end
end
