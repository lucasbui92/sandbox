class Teacher < ApplicationRecord
    has_many :teaching_courses, dependent: :destroy
    has_many :courses, through: :teaching_courses, inverse_of: :teachers

    has_many :students, through: :courses, inverse_of: :teachers
end
