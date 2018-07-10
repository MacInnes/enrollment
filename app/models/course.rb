class Course < ApplicationRecord
  validates_presence_of :name
  has_many :students_courses
  has_many :students, through: :students_courses
end
