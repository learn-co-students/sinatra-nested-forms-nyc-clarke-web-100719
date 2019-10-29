class Pirate
    attr_accessor :name, :weight, :height

    @@all = []


    def self.all
        @@all
    end

    def initialize(attributes)
        attributes.each {|k,v| instance_variable_set("@#{k}",v)}
        self.class.all << self
    end
    
end