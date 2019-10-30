# your code goes here
require "pry"

class Person 
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize (persons_name)
        @name=persons_name
        @bank_account= 25
        @happiness=8
        @hygiene=8
    end

    def happiness=(new_happiness)
        if new_happiness<11 && new_happiness >=0
            @happiness=new_happiness
        end
        @happiness=10 if new_happiness >=10
        @happiness=0 if new_happiness<=0
    end


    def name
        @name
    end

    def bank_account
        @bank_account
    end



    def hygiene=(new_hygiene)
        if new_hygiene<11 && new_hygiene >=0
            @hygiene=new_hygiene
        end
        @hygiene=10 if new_hygiene >=10
        @hygiene=0 if new_hygiene<=0

        
    end

    def happy?
        @happiness.between?(8,10)
    #  if @happiness>7
    #  return true 
    #  else 
    #     false 
    #  end 
    end 
    
    def clean?
        @hygiene.between?(8,10)
        # if @hygiene>7
        # return true 
        # else 
        #    false 
        # end 
    end 

    def get_paid(salary)
       @bank_account= @bank_account + salary
       "all about the benjamins"

    end 

    def take_bath
        self.hygiene+=4   
     "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.hygiene-=3
        self.happiness+=2
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        self.happiness+=3
        friend.happiness+=3
            return "Hi #{friend.name}! It's #{self.name}. How are you?"
        
    end 

    def start_conversation(person, topic)
     if topic=="politics"
        self.happiness-=2
        person.happiness-=2
        return "blah blah partisan blah lobbyist"

     elsif
        topic=="weather"
        self.happiness+=1
        person.happiness+=1
        return "blah blah sun blah rain"
     elsif
        topic!= "politics" || topic !="weather"
        return "blah blah blah blah blah"
     end 
    end 
end 