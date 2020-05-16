class Pirate
attr_accessor :name, :weight, :height

@@all=[]
 def initialize(pirate_h:)
   @name,@weight,@height=pirate_h[:name],pirate_h[:weight],pirate_h[:height]
   @@all << self
 end
 def self.all
   @@all
 end


end
