require 'spec_helper'

feature 'record building owner', %Q{
  As a real estate associate
  I want to record a building owner
  So that I can keep track of our relationships with owners
} do

  # Acceptance Criteria

  # * I must specify a first name, last name, and email address
  # * I can optionally specify a company name
  # * If I do not specify the required information, 
  #   I am presented with errors
  # * If I specify the required information, the owner is recorded 
  #   and I am redirected to enter another new owner

  scenario 'specify valid information' do
    visit new_owner_url
    fill_in "First name", with: 'Rocky'
    fill_in "Last name", with: 'Balboa'
    fill_in "Email", with: 'eyeofthetiger@boxing.com'
    click_button 'Record'

    expect(page).to have_content('Recorded successfully')
    expect(Owner.count).to eql(prev_owner_count + 1)
  end

  scenario 'specify invalid information' do
    prev_owner_count = Owner.count

    visit new_owner_url

    click_button 'Record'
    expect(page).to have_content("can't be blank")
    expect(Owner.count).to eql(prev_owner_count)
  end
end