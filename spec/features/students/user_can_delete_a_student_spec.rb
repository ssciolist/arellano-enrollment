require 'rails_helper'

describe 'As a user' do
  describe 'when I visit /students' do
    scenario 'I can click a delete button next to a student name' do
      Student.create!(name: 'Mike')
      Student.create!(name: 'Megan')
      student = Student.create!(name: 'Laura')

      visit students_path
      within(:css, "li#student_id_#{student.id}") do
        click_button 'Delete'
      end

      expect(page).to_not have_content('Laura')
    end
  end
end
