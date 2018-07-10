require 'rails_helper'

describe 'Visitor' do
  it 'can delete a student' do
    student_1 = Student.create(name: "Andrew")
    student_2 = Student.create(name: "Bob")

    visit students_path
    within("#student-#{student_1.id}") do
      click_on("Delete")
    end

    expect(current_path).to eq(students_path)
    expect(page).to_not have_content(student_1.name)
  end
end
