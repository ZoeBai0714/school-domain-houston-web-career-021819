# code here!
class School
  attr_reader :name
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
 
  
  
  def add_student(name, grade)
    if roster["#{grade}"]
      roster[:"#{grade}""] << "#{name}"
    else
      roster["#{grade}"] = []
      roster["#{grade}"] << "#{name}"
    end
  end
  
  def grade(grade)
    roster.each do |grades, students|
      if grades == grade
        return students
      end
    end
  end
  
  def sort
  end
end