require 'rails_helper'

describe 'As a user' do
  describe 'when I visit a student\'s page' do
    scenario 'I see the name of a student' do
      student = Student.create(name: 'Jacob')

      visit student_path(student)

      expect(page).to have_content('Jacob')
    end
  end
end
