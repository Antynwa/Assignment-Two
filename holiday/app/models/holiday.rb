class Holiday < ActiveRecord::Base
belongs_to :user
 # Validations
  validates_presence_of :name
  validates_presence_of :dateleaving
  validates_presence_of :datereturning
  


  validates_length_of :name, :minimum => 3
  #validates_numericality_of #checks number

end
