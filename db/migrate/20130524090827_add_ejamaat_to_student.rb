class AddEjamaatToStudent < ActiveRecord::Migration
  def self.up
    add_column :students, :ejamaatNumber , :string
  end

  def self.down
    remove_volumn :students, :ejamaatNumber
  end
end
