class CreateTeachersStudentsCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :name

      t.timestamps
    end

    create_table :students do |t|
      t.string :name

      t.timestamps
    end

    create_table :courses do |t|
      t.string :name

      t.timestamps
    end

    create_table :teaching_courses, id: false do |t|
      t.belongs_to :teacher, foreign_key: true
      t.belongs_to :course, foreign_key: true

      t.timestamps
    end

    create_table :studying_courses, id: false do |t|
      t.belongs_to :student, foreign_key: true
      t.belongs_to :course, foreign_key: true

      t.timestamps
    end
  end
end
