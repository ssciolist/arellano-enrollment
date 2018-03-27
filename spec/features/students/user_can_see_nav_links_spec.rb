require 'rails_helper'

describe 'As a user' do
  scenario 'I visit /students and see links to all students and create' do
    visit students_path

    click_link 'All Students'
    expect(current_path).to eq(students_path)

    visit students_path

    click_link 'Create a new student'
    expect(current_path).to eq(new_student_path)
  end

  scenario 'I visit /students/new and see links to all students and create' do
    visit new_student_path

    click_link 'All Students'
    expect(current_path).to eq(students_path)

    visit new_student_path

    click_link 'Create a new student'
    expect(current_path).to eq(new_student_path)
  end

  scenario 'I visit /students/:id and see links to all students and create' do
    student = Student.create!(name: 'Mike')
    visit student_path(student)

    click_link 'All Students'
    expect(current_path).to eq(students_path)

    visit student_path(student)

    click_link 'Create a new student'
    expect(current_path).to eq(new_student_path)
  end

  scenario 'I visit /students/:id/edit and see links to all students and create' do
    student = Student.create!(name: 'Mike')
    visit edit_student_path(student)

    click_link 'All Students'
    expect(current_path).to eq(students_path)

    visit edit_student_path(student)

    click_link 'Create a new student'
    expect(current_path).to eq(new_student_path)
  end
end
