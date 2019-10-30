# your code goes here
require "pry"
class Person
    attr_reader :name 
    attr_accessor :bank_account, :hygiene, :happiness
    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene= 8
    end

    def name 
        @name
    end
    def bank_account
        @bank_account
    end
    def happiness #syntax to define a method that's writable 
        @happiness.clamp(0,10)
        #FF thoughts __ to ask baby_K
        # if happiness_point = (0..10)
        # @happiness = happiness_point
        # elsif @happiness > 10
        #     @happiness = 10
        # elsif @happiness < 0
        #     @happiness=0
        # end
    end
    def hygiene
        @hygiene.clamp(0,10)
    end
    def happy?
        @happiness.between?(8,10)
    end
    def clean?
        @hygiene.between?(8,10)
    end
    def get_paid (salary)
        @bank_account += salary
        "all about the benjamins"
    end
    def take_bath
         self.hygiene +=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.happiness +=2
        self.hygiene-=3
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        friend.happiness+=3
        self.happiness +=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(start_person,topic)
        if topic == "politics"
            start_person.happiness -= 2
            self.happiness -=2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            start_person.happiness+=1
            self.happiness +=1
            'blah blah sun blah rain'
        else
            "blah blah blah blah blah"
        end

    end

end

