class Ship
  attr_accessor :name, :type, :booty

   @@all=[]
   def initialize(ship_h:)
     @name,@type,@booty=ship_h[:name],ship_h[:type],ship_h[:booty]
     @@all << self
   end
   def self.all
     @@all
   end

   def self.clear
     @@all.clear
   end

end
