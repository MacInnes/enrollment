require 'rails_helper'

describe 'Visitor' do
  it 'can create a new address' do
    student = Student.create(name: "Andrew")

    visit new_student_address_path(student)

    description = "blah"
    street = "123 Main"
    city = "Boulder"
    state = "CO"
    zip = 80301

    fill_in :description, with: description
    fill_in :street, with: street
    fill_in :city, with: city
    fill_in :state, with: state
    fill_in :zip, with: zip
    click_on("Create Address")

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content(description)
    expect(page).to have_content(street)
    expect(page).to have_content(city)
    expect(page).to have_content(state)
    expect(page).to have_content(zip)

  end
end
