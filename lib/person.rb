# your code goes here
class Person

 @@all = []

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8 

        @@all << self
    end

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end


    def clean?
        if self.hygiene > 7
            return true
        else
            return false
        end
    end

    def happy?
        if self.happiness > 7
            return true
        else
            return false
        end
    end

    def get_paid(paycheck)
        @bank_account += paycheck
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene = increase(self.hygiene, 4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = increase(self.happiness, 2)
        self.hygiene = decrease(self.hygiene, 3)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        @friend = friend
        self.happiness = increase(self.happiness, 3)
        @friend.happiness = increase(@friend.happiness, 3)
        return "Hi #{@friend.name}! It's #{self.name}. How are you?"

    end

    def increase(state, amount)
        state + amount
    end

    def decrease(state, amount)
        state - amount
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness = decrease(self.happiness, 2)
            friend.happiness = decrease(friend.happiness, 2)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = increase(self.happiness, 1)
            friend.happiness = increase(friend.happiness, 1)
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

end