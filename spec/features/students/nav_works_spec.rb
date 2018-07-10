require 'rails_helper'

describe 'Navigation' do
  context 'All students link' do
    it 'can navigate to see all students from student show page' do
      student = Student.create(name: "Andrew")

      visit student_path(student)
      link_name = "Students"

      expect(page).to have_content(link_name)
      click_on(link_name)
      expect(current_path).to eq(students_path)
    end

    it 'can navigate to see all students from student edit page' do
      student = Student.create(name: "Andrew")

      visit edit_student_path(student)
      link_name = "Students"

      expect(page).to have_content(link_name)
      click_on(link_name)
      expect(current_path).to eq(students_path)
    end

    it 'can navigate to see all students from student new page' do
      visit new_student_path
      link_name = "Students"

      expect(page).to have_content(link_name)
      click_on(link_name)
      expect(current_path).to eq(students_path)
    end
  end

  context 'One student link' do
    it 'can view a single student from students page' do
      student = Student.create(name: "Andrew")

      visit students_path

      click_on("Andrew")
      expect(current_path).to eq(student_path(student))
    end
  end

end
