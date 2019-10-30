# your code goes here
class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(new_happiness)
        if new_happiness <11 && new_happiness >= 0
            @happiness = new_happiness
        end
    end

    def hygiene=(new_hygiene)
        if new_hygiene <11 && new_hygiene >= 0
            @hygiene = new_hygiene
        end
    end

    def clean?
        return true if @hygiene > 7   
        false                                      
    end

    def happy?
        return true if @happiness > 7
        false
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @happiness += 2
        @hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        @happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            @happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather" 
            @happiness += 1
            person.happiness += 1
            return "blah blah sun blah rain"
        else   
            return "blah blah blah blah blah"
        end
    end
end 