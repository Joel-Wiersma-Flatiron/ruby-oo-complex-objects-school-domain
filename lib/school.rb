class School

    attr_reader :name,:roster
    def initialize(name)
        @name = name
        @roster = {}
    end
    def add_student(name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
        end
        @roster[grade] << name
    end
    def grade(num)
        @roster[num]
    end
    def sort
        @roster.each do |grade, name|
            @roster[grade] = name.sort
        end
        @roster
    end
end