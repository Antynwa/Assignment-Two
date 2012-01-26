class CreateHolidays < ActiveRecord::Migration
  def self.up
    create_table :holidays do |t|
      t.string :name
      t.date :dateleaving
      t.date :datereturning
      t.timestamp :datesubmitted
      t.date :dateapprej
      t.string :approved
      t.string :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :holidays
  end
end
