require 'rails_helper'

describe "User can search by house" do
  scenario "User submits a valid house" do
    visit '/'
    select 'Gryffindor'
    click_on 'Search For Members'
    expect(current_path).to eq('/search')
  end

  it "Can display information about members of the order of the phoenix for house" do
    visit '/'
    select 'Gryffindor'
    click_on 'Search For Members'

    expect(page).to have_content("Order of the Phoenix: 21 members")

    within(first(".member")) do
      expect(page).to have_content("Sirius Black")
      expect(page).to have_content("Role: Unknown")
      expect(page).to have_content("House: Gryffindor")
      expect(page).to have_content("Patronus: Unknown")
    end
  end
end