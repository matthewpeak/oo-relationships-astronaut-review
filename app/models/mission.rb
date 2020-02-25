class Mission
    attr_reader :date
    @@all = []
    def initialize(date)
        @date = date
    end 
 
    def self.all
        @@all
    end 
    
end
