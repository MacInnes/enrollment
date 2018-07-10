require 'rails_helper'

describe 'Visitor' do
  it 'can view all students' do
    student_1 = Student.create(name: "Andrew")
    student_2 = Student.create(name: "Fred")
    student_3 = Student.create(name: "Bob")

    visit students_path

    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)
    expect(page).to have_content(student_3.name)

  end
end
