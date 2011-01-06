class CreateDoctorVisits < ActiveRecord::Migration
  def self.up
    create_table :doctor_visits do |t|
      t.datetime :date
      t.integer :note_id
      t.integer :doctor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :doctor_visits
  end
end
