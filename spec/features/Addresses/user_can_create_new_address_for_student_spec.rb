require 'rails_helper'

describe 'As a user' do
  describe 'when I visit /students/addresses/new' do
    scenario 'I can fill in a new student address form and submit' do
      student = Student.create!(name: 'Jacob')
      visit new_student_address_path(student)

      fill_in 'address[description]', with: 'Home'
      fill_in 'address[street_address]', with: '1234 Fake Street'
      fill_in 'address[city]', with: 'Denver'
      fill_in 'address[state]', with: 'CO'
      fill_in 'address[zip]', with: '80218'

      click_button 'Create Address'

      address = Address.all.last

      expect(current_path).to eq(student_addresses)
    end
  end
end
