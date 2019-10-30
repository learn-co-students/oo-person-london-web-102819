# your code goes here
class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    def initialize(name)
        @name = name
        @bank_account = 25 
        @happiness = 8 
        @hygiene = 8
    end
    def happiness
        @happiness.clamp(0,10)
    end 
    def hygiene
        @hygiene.clamp(0,10)
    end
    def happy?
        if @happiness > 7
            return true
        else return false
        end
    end
    def clean?
        if @hygiene > 7 
            return true
        else return false
        end
    end
    def get_paid(salary)
        @bank_account += salary
        return 'all about the benjamins'
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
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end
    def start_conversation(mate, topic)
        if topic == 'politics'
            self.happiness -= 2
            mate.happiness -= 2
            'blah blah partisan blah lobbyist' 
        elsif topic == 'weather'
            self.happiness += 1
            mate.happiness += 1
            'blah blah sun blah rain'
        else topic == 'other'
            'blah blah blah blah blah'
        end
    end
end 
