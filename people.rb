#People#

class People
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    "Hi my name is #{@name}!"
  end
end

class Student < People
  def learn
    puts "I get it."
  end
end

class Instructor < People
  def teach
    puts "Everything in Ruby is an object."
  end
end

chris = Instructor.new("Chris")
chris.greeting
chris.teach

christina = Student.new("Christina")
christina.greeting
christina.learn

#chris.learn does not work because it doesn't belong to the parent class, People.#

#
