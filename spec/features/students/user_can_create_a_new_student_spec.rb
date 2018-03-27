require 'rails_helper'

describe 'As a user' do
  describe 'when I visit /students/new' do
    describe 'I can submit a new student form' do
      scenario 'and I can submit it, then see a student\'s page' do
        visit '/students/new'

        fill_in 'student[name]', with: 'Riley'
        click_button 'Create Student'

        student = Student.all.last

        expect(current_path).to eq(student_path(student))
      end
    end
  end
end
