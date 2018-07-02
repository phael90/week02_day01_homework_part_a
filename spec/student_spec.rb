require('minitest/autorun')
require_relative('../student.rb')

class TestStudent < MiniTest::Test


  def test_student_name()
    student = Student.new("Vicky", "E23")
    assert_equal("Vicky", student.name())
  end

  def test_cohor()
    student = Student.new("Vicky", "E23")
    assert_equal("E23", student.cohort())
  end

  def test_set_student_name()
    student = Student.new("Vicky", "E23")
    student.set_name("Raphael")
    assert_equal("Raphael", student.name())
  end

  def test_set_student_cohort()
    student = Student.new("Vicky", "E23")
    student.set_cohort("E7")
    assert_equal("E7", student.cohort())
  end

  def test_talk_return()
    student = Student.new("Vicky", "E23")
    assert_equal("Wow, I can talk!", student.talk("Wow, I can talk!"))
  end

  def test_favourite_language_return()
    student = Student.new("Vicky", "E23")
    assert_equal("My favourite is Java Script!", student.favourite_language_return("Java Script"))
  end


end
