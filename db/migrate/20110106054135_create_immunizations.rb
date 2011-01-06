class CreateImmunizations < ActiveRecord::Migration
  def self.up
    create_table :immunizations do |t|
      t.integer :doctor_visit_id
      t.integer :note_id

      t.timestamps
    end
  end

  def self.down
    drop_table :immunizations
  end
end
