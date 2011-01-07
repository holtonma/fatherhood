class NotesOnDiapersAlter < ActiveRecord::Migration
  def self.up
    remove_column :diapers, :note_id
    add_column :diapers, :note, :text
  end

  def self.down
    add_column :diapers, :note_id, :integer
    remove_column :diapers, :note
  end
end
