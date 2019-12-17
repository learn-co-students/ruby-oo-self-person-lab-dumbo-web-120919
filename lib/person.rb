
require 'pry'
class Person 

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness=(h_level)
        @happiness = h_level
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
    end

    def hygiene=(clean_lvl)
        @hygiene = clean_lvl
        @hygiene = 10 while @hygiene > 10
        @hygiene = 0 while @hygiene < 0
    end

    def happy?
        if happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if hygiene > 7
            return true
        else
            return false
        end
    end
    
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        [friend, self].each {|n| n.happiness += 3}
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
        [person, self].each {|n| n.happiness -= 2}
        "blah blah partisan blah lobbyist"
        elsif topic == "weather"
        [person, self].each {|n| n.happiness += 1} 
        "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
    #binding.pry
end
