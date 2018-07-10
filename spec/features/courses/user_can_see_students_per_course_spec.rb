require 'rails_helper'

describe 'Visitor' do
  it 'can see all students in a course' do
    course = Course.create(name: "BE Mod 2")
    student_1 = course.students.create(name: "Andrew")
    student_2 = course.students.create(name: "Tristan")
    student_3 = course.students.create(name: "Keegan")

    visit course_path(course)

    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)
    expect(page).to have_content(student_3.name)
  end
end
