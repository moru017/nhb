class Person
    def initialize(age, name, gender)
        
        @age = age
        @name = name
        @gender = gender
    end

    def say_hello
        puts "こんにちは、私は#{@name},#{@age}歳です"
    end

    def say_if_old_or_young
        if @age <= 24
            puts "若い"
        else
            puts "歳"
        end
    end
end


mamoru =Person.new(30,"mamorutanaka")
mamoru.say_hello
mamoru.say_if_old_or_young

kid =Person.new(7,"kokoroterada")
kid.say_hello
kid.say_if_old_or_young

