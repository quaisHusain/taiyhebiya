class AddEjamaatToArchivedStudent < ActiveRecord::Migration
  def self.up
    add_column :archived_students, :ejamaatNumber, :string
  end

  def self.down
    remove_volumn :archived_students, :ejamaatNumber
  end
end
