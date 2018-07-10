class Student < ApplicationRecord
  validates_presence_of :name
  has_many :addresses
  has_many :students_courses
  has_many :courses, through: :students_courses
end
