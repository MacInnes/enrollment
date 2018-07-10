require 'rails_helper'

describe 'Visitor' do
  it 'can create a new student' do
    visit new_student_path

    name = "Andrew"

    fill_in :student_name, with: name
    click_on("Create Student")

    expect(current_path).to eq(students_path)
    expect(page).to have_content(name)
  end
end
