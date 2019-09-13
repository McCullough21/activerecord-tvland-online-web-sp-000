class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    [self.first_name, self.last_name].join(" ")
  end
  def list_roles
    self.characters.each do |c|
      c.name + c.shows
    end 
    characters.show].join
  end

end
