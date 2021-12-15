require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(num)
        @happiness = num
        if @happiness > 10
                @happiness=10
        elsif @happiness < 0
            @happiness = 0
        end
    end
    
    def hygiene=(num)
        @hygiene = num
        if @hygiene > 10
                @hygiene=10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
    end

end


p1=Person.new("Ben")
binding.pry