class Student < ApplicationRecord
    has_many :studying_courses
    has_many :courses, through: :studying_courses, inverse_of: :students

    has_many :teachers, through: :courses, inverse_of: :students
end
