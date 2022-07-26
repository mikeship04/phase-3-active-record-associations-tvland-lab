class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    #we want an array containing a string with both the character and show
    roles = self.characters
    roles.map {|a| "#{a.name} - #{a.show.name}"}
  end
end