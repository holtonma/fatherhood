class ChangeTypeColOnDiapers < ActiveRecord::Migration
  def self.up
    remove_column :diapers, :type
    add_column :diapers, :result, :string
  end

  def self.down
    remove_column :diapers, :result
  end
end
