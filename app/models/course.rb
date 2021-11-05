class Course < ApplicationRecord
    has_many :studying_courses
    has_many :teaching_courses

    has_many :teachers, through: :teaching_courses, inverse_of: :courses
    has_many :students, through: :studying_courses, inverse_of: :courses
end
