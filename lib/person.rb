require 'pry'
# # your code goes here
# get paid/receive payments
# take a bath
# call a friend
# start a conversation
# state if they are happy and/or clean

class Person
    attr_accessor  :bank_account
    attr_reader :name,:hygiene, :happiness
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        
    end

    def happiness=(num)
        @happiness = num
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    def hygiene=(value)
        @hygiene = value
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(talking_to, topic)
        if topic == "politics"
            self.happiness -= 2
            talking_to.happiness -=2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness +=1
            talking_to.happiness +=1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

end
jhon =Person.new(jhon)
# binding.pry