class CreateDoctors < ActiveRecord::Migration
  def self.up
    create_table :doctors do |t|
      t.string :lname
      t.string :fname
      t.string :office_name
      t.string :website
      t.string :address

      t.timestamps
    end
  end

  def self.down
    drop_table :doctors
  end
end
