class RemoveDateapprejFromHoliday < ActiveRecord::Migration
  def self.up
    remove_column :holidays, :dateapprej
  end

  def self.down
    add_column :holidays, :dateapprej, :date
  end
end
