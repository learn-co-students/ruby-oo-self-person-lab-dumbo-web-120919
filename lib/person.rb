# your code goes here
require 'pry'

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  def initialize(name)
    @name = name 
    @bank_account = 25 
    @happiness = 8
    @hygiene = 8
  @hygiene.clamp(0, 10)
  @happiness.clamp(0, 10)
  end
  
   def happiness=(happiness_points)
    @happiness = happiness_points
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end
  
    def hygiene=(hygiene_points)
    @hygiene = hygiene_points
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end
  
  def clean?
    if @hygiene > 7
      return true 
    else
      return false
    end
  end

def happy?
  if @happiness > 7
    return true 
else
  return false 
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
  friend.happiness += 3 
  self.happiness += 3
  return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)
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

end # end of this godforsaken code 



poopy = Person.new("poopy")
