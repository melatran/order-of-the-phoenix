require 'rails_helper'

describe "User can search by hous" do
  scenario "User submits a valid house" do
    visit '/'
    select 'Gryffindor'
    click_on 'Search For Members'
    expect(current_path).to eq('/search')
  end
end