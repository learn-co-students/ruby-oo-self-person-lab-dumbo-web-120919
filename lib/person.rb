require 'pry'
class Person
    # attr_writer :happiness
    attr_accessor :happiness, :hygiene, :bank_account
    attr_reader :name

    @@all = []
    

    def initialize (name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25

        @@all << self
        
    end

    def happiness
        if @happiness >= 10
            return 10
        elsif @happiness <= 0
            return 0
        end 
        return @happiness
    end 

    def hygiene
        if @hygiene >= 10
            return 10
        elsif @hygiene <= 0
            return 0
        end 
        return @hygiene
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if @hygiene >7
            return true
        else
            return false
        end
 
    end

    def get_paid(salary)
        @bank_account += salary
        return 'all about the benjamins'
    end

    def take_bath
        self.hygiene += 4
        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person,topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end


    end




    





end

