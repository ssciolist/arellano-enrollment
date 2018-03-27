require 'rails_helper'

describe 'As a user' do
  describe 'when I visit /students' do
    scenario 'I can click a delete button next to a student name' do
      student = Student.create!(name: 'Laura')

      visit students_path
      click_link 'Delete'

      expect(page).to_not have_content('Laura')
    end
  end
end
