class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters


  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
   characters.map {|c| c.name}.first + " - " + shows.map {|s| s.name}.first
   #not asking to be pushed  into array, but output a string the way the error method says 
  end

end
