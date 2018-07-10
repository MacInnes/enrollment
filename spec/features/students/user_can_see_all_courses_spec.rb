require 'rails_helper'

describe 'Visitor' do
  it 'can view all courses belonging to a student' do
    student = Student.create(name: "Andrew")
    course_1 = student.courses.create(name: "BEE")
    course_2 = student.courses.create(name: "BEE Mod 2")

    visit student_path(student)

    expect(page).to have_content(course_1.name)
    expect(page).to have_content(course_2.name)
  end
end
