class RemoveDatesubmittedFromHoliday < ActiveRecord::Migration
  def self.up
    remove_column :holidays, :datesubmitted
  end

  def self.down
    add_column :holidays, :datesubmitted, :datetime
  end
end
