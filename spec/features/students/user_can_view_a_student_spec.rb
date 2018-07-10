require 'rails_helper'

describe 'visitor' do
  it 'can see a single student' do
    student = Student.create(name: "Andrew")

    visit student_path(student)

    expect(page).to have_content(student.name)
  end
end
