class Cult

    attr_reader :name, :location, :founding_year, :slogan, :followers

    @@all = []

    def initialize (name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @followers = []
        @@all << self
    end 

    

    def recruit_follower(follower_instance)
        @followers << follower_instance
    end

    def cult_population
        self.followers.count
    end 

    def self.all
        @@all
    end

    def self.find_by_name(name)
        @@all.select do |cult_instance|
            cult_instance.name == name
        end
        #binding.pry
    end

    def self.find_by_location(location)
        @@all.select do |cult_instance|
            cult_instance.location == location
        end
        #binding.pry
    end

    def self.find_by_founding_year(founding_year)
        @@all.select do |cult_instance|
            cult_instance.founding_year == founding_year
        end
    end

end








=begin
X* `Cult#name`
* returns a `String` that is the cult's name

X* `Cult#location`
* returns a `String` that is the city where the cult is located

X* `Cult#founding_year`
* returns an `Integer` that is the year the cult was founded

X* `Cult#slogan`
* returns a `String` that is this cult's slogan

?* `Cult#recruit_follower`
* takes in an argument of a `Follower` instance and adds them to this cult's list of followers

X* `Cult#cult_population`
* returns an `Integer` that is the number of followers in this cult

X* `Cult.all`
* returns an `Array` of all the cults

X* `Cult.find_by_name`
* takes a `String` argument that is a name and returns a `Cult` instance whose name matches that argument

X* `Cult.find_by_location`
* takes a `String` argument that is a location and returns an `Array` of cults that are in that location

X* `Cult.find_by_founding_year`
* takes an `Integer` argument that is a year and returns all of the cults founded in that year
=end