class Astronaut
    attr_reader :name, :age  
    @@all =[]
    def initialize(name,age,speciality)
        @name = name 
        @age = age 
        @speciality= "study on mars"
        Astronaut.all << self 
    end
     
    def self.all 
        @@all
    end 
    def shuttles 
     Shuttle.all.select{|shuttle| shuttle.current_astronauts.find{|astronaut| astronaut == self}}
    end 

    def join_shuttle(shuttle,date)
        shuttle.add_astronaut(self,date)
    end
end
