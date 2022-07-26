class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

  def actors_list
    cast = self.characters
    cast.map {|a| "#{a.actor.first_name} #{a.actor.last_name}"}

    #characters.map{|c| "#{c.actor.full_name}"}
  end
end