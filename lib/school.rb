# code here!
require 'pry'
class School
  attr_reader :name
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
 
  
  
  def add_student(name, grade)
    if @roster["#{grade}".to_i]
      @roster["#{grade}".to_i] << "#{name}"
    else
      @roster["#{grade}".to_i] = []
      @roster["#{grade}".to_i] << "#{name}"
    end
  end
  
  def grade(grade)
    @roster.each do |grades, students|
      if grades == grade
        return students
      end
    end
  end
  
  def sort
    results = {}
    @roster.map do |grades, students|
     results["#{grades}".to_i] = []
     results["#{grades}".to_i] << students.sort
   end
   
   
end

end