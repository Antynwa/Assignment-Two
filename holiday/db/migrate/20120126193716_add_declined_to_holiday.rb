class AddDeclinedToHoliday < ActiveRecord::Migration
  def self.up
    add_column :holidays, :declined, :boolean
  end

  def self.down
    remove_column :holidays, :declined
  end
end
