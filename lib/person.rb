# your code goes here
require 'pry'
class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize (name)
        @name = name 
        @bank_account = 25 
        @happiness = 8
        @hygiene = 8
        @salary = 100
    end

    def happiness=(num)
        @happiness = num
        #person can't be happier than 10 (same for hygiene)
        @happiness = 10 if happiness > 10
        #person happiness can't be less than 0 (same for hygiene)
        @happiness = 0 if happiness < 0  
    end

    def hygiene=(num)
        @hygiene = num 
        #person can't be happier than 10 (same for hygiene)
        @hygiene = 10 if hygiene > 10
        #person happiness can't be less than 0 (same for hygiene)
        @hygiene = 0 if hygiene < 0
    end

    def happy?
        if happiness > 7  
            return true
        else  return false
        end
    end

    def clean?
        if hygiene > 7  
            return true
        else  return false
        end
    end

    def get_paid (salary)
        @bank_account = salary
        @bank_account += 25
        return "all about the benjamins"
    end

    def take_bath
        @hygiene = hygiene
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
        #@hygiene = 10 if hygiene > 10
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    
    def start_conversation(person, topic)
        objects = [self, person]
        if topic == "politics"
            objects.each { |o| o.happiness -= 2}
            return "blah blah partisan blah lobbyist"
           
        #@happiness -= 2
            #friend.happiness -= 2
            #people_in_convo.each do happiness -= 2
            #self.happiness -= 2
            #person.happiness -= 2
        elsif topic == "weather" 
            objects.each { |o| o.happiness += 1}
           return "blah blah sun blah rain"
           
        else topic == "other"
            return "blah blah blah blah blah"
        end 
    end


    #binding.pry 


end
