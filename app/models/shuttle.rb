class Shuttle
    att_reader :model_number, :capacity
    @@shuttles =[]
    def initialize(model_number,capacity)
        @model_number = model_number
        @capacity = capacity
        @current_astronauts=[]
    end 
    
    def self.all
        @@shuttles 
    end
    
    def model 
     "#{@model_number}"
    end
    
    def capacity 
        @capacity
    end 
    def add_astronaut(astronaut,date)
        if @current_astronauts.length < @capacity
            @current_astronauts << astronaut
        else 
            puts "This shuttle is at capacity"
        end
    end 
   
    def current_astronauts
        @current_astronauts
    end 
    def self.find_model(str)
       Shuttle.all.find do |shuttle|
        shuttle.model_number == str 
       end 
    end 
end
