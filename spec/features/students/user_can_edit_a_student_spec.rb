require 'rails_helper'

describe 'Visitor' do
  it 'can edit an existing user' do
    student = Student.create(name: "Andrew")

    visit edit_student_path(student)

    new_name = "Bob"

    fill_in :student_name, with: new_name
    click_on("Update Student")

    expect(current_path).to eq(students_path)
    expect(page).to have_content(new_name)
  end
end
