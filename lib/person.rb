require 'pry'
class Person
  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8 
  end
  def happiness=(happiness)
    if happiness >= 10
      @happiness = 10
    elsif happiness <= 0
      @happiness = 0
    else
      @happiness = happiness
    end
  end
  def hygiene=(hygiene)
    if hygiene >= 10
      @hygiene = 10
    elsif hygiene <= 0
      @hygiene = 0
    else
      @hygiene = hygiene
    end
  end
  def clean?
    hygiene > 7
  end
  def happy?
    happiness > 7
  end
  def get_paid(salary)
    @bank_account += salary
    return 'all about the benjamins'
  end
  def take_bath
    self.hygiene += 4
    song = "♪ Rub-a-dub just relaxing in the tub ♫"
    return song
  end
  def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end
  def call_friend(friend)
    [self, friend].each do |happy_pts|
      happy_pts.happiness += 3
    end
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  def start_conversation(person, topic)
    convo = [person, self]
    if topic == "politics"
      convo.each do |happy| happy.happiness -= 2
      end
      'blah blah partisan blah lobbyist'
    elsif topic == "weather"
        convo.each do |happy| happy.happiness += 1
      end
      'blah blah sun blah rain'
    else topic != "politics" && "weather"
      'blah blah blah blah blah'
    end
  end
 #binding.pry
end