require 'rails_helper'

describe 'As a user' do
  describe 'when I visit /students' do
    scenario 'I see a list of student names' do
    student = Student.create!(name: 'Jacob')
    student_2 = Student.create!(name: 'Seth')
    student_3 = Student.create!(name: 'Travis')

    visit students_path

    expect(page).to have_content(student.name)
    expect(page).to have_content(student_2.name)
    expect(page).to have_content(student_3.name)
    end
  end
end
