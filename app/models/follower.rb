class Follower

    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        #@cults = []
        @@all << self
    end

    def cults
        BloodOath.all.select do |cult_instance|
             cult_instance.follower == self
        end
    end
    
    # * `Follower#join_cult`
    # * takes in an argument of a `Cult` instance and adds this follower to the cult's list of followers


    def join_cult(cult_instance)
        Cult.all.followers.push(cult_instance.followers) 
        binding.pry
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        @@all.select do |follower_instance|
            follower_instance.age >= age
        end
    end

end







=begin
X* `Follower#name`
* returns a `String` that is the follower's name

X* `Follower#age`
* returns an `Integer` that is the age of the follower

X* `Follower#life_motto`
* returns a `String` that is the follower's life motto

X* `Follower#cults`
*returns an `Array` of this follower's cults

* `Follower#join_cult`
* takes in an argument of a `Cult` instance and adds this follower to the cult's list of followers

X* `Follower.all`
* returns an `Array` of all the followers

X* `Follower.of_a_certain_age`
* takes an `Integer` argument that is an age and returns an `Array` of followers who are the given age or older
=end
