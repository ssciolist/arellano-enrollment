require 'rails_helper'

describe 'As a user' do
  describe 'when I visit /students/:id/edit' do
    scenario 'I can fill in a form' do
      student = Student.create!(name: 'Mike')
      visit edit_student_path(student)

      fill_in 'student[name]', with: 'Barb'
    end

    scenario 'I can submit the form' do
      student = Student.create!(name: 'Megan')
      visit edit_student_path(student)

      fill_in 'student[name]', with: 'Laura'
      click_button 'Edit Student'

      expect(current_path).to eq(student_path(student))
      expect(page).to have_content('Laura')
    end
  end
end
