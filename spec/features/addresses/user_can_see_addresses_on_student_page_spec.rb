require 'rails_helper'

describe 'As a user' do
  describe 'when I visit /students/:id' do
    scenario 'I see that student\'s addresses' do
      student = Student.create!(name: 'Jacob')
      address = student.addresses.create!(description: 'Home',
                                street: '1234 Fake st',
                                city: 'Boulder',
                                state: 'CO',
                                zip_code: 34569)
      address_2 = student.addresses.create!(description: 'Work',
                                street: '567 Fake st',
                                city: 'Denver',
                                state: 'UT',
                                zip_code: 59854)
      visit student_path(student)

      expect(page).to have_content(address.street)
      expect(page).to have_content(address.city)
      expect(page).to have_content(address_2.street)
      expect(page).to have_content(address_2.city)
    end
  end
end
