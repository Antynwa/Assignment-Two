class RemoveApprovedFromHoliday < ActiveRecord::Migration
  def self.up
    remove_column :holidays, :approved
  end

  def self.down
    add_column :holidays, :approved, :string
  end
end
