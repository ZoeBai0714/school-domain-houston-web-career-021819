# code here!
class School
  @@roster = {}
  attr_reader :name
  def initialize(name)
    @name = name
  end
 
  
  def add_student(name, grade)
    if roster["#{grade}"]
      roster["#{grade}"] << "#{name}"
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