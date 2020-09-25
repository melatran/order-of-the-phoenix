require 'rails_helper'

describe SearchResults do
  it "can get the search results of a house" do
    members = SearchResults.new.house_members("Gryffindor")
    
    expect(members).to be_an(Array)
    expect(members.count).to eq(21)
    expect(members.first.name).to eq("Sirius Black")
    expect(members.first.house).to eq("Gryffindor")
    expect(members.first.role).to eq("Unknown")
    expect(members.first.patronus).to eq("Unknown")
  end
end