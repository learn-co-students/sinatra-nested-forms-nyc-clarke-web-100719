class Ship

    attr_accessor :name, :type, :booty

    @@all = []

    def self.all
        @@all
    end

    def self.clear
        @@all = []
    end 

    def initialize(attributes)
        attributes.each {|k,v| instance_variable_set("@#{k}",v)}
        self.class.all << self
    end


end