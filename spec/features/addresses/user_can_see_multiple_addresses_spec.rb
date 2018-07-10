require 'rails_helper'

describe 'Visitor' do
  it 'can see multiple addresses' do
    student = Student.create(name: "Andrew")
    address_1 = student.addresses.create(description: "blah",
                                       street: "123 Main",
                                       city: "Boulder",
                                       state: "CO",
                                       zip: 80301)
    address_2 = student.addresses.create(description: "Grandma's house",
                                       street: "2348 Willow",
                                       city: "Boulder",
                                       state: "CO",
                                       zip: 80301)

    visit student_path(student)
    expect(page).to have_content(address_1.description)
    expect(page).to have_content(address_2.description)
    expect(page).to have_content(address_1.street)
    expect(page).to have_content(address_2.street)
  end
end
