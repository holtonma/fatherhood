class CreateFeedingTypes < ActiveRecord::Migration
  def self.up
    create_table :feeding_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :feeding_types
  end
end
