class CreateTemperatureTypes < ActiveRecord::Migration
  def self.up
    create_table :temperature_types do |t|
      t.string :name
      t.integer :note_id

      t.timestamps
    end
  end

  def self.down
    drop_table :temperature_types
  end
end
