require 'rails_helper'

describe Course do
  describe 'Validations' do
    it {should validate_presence_of(:name)}
  end
  describe 'Relationships' do
    it {should have_many(:students).through(:students_courses)}
  end
end
