class CreateFeedings < ActiveRecord::Migration
  def self.up
    create_table :feedings do |t|
      t.datetime :feeding_time
      t.integer :feeding_type_id
      t.integer :amount
      t.string :unit

      t.timestamps
    end
  end

  def self.down
    drop_table :feedings
  end
end
