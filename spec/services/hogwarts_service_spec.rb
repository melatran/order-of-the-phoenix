require 'rails_helper'

describe HogwartsService do
  it ".get_house_members" do
    service = HogwartsService.new
    members_info = service.get_house_members("Gryffindor")

    expect(members_info).to be_an(Array)
    expect(members_info.count).to eq(21)
    expect(members_info.first[:name]).to eq('Sirius Black')
    expect(members_info.first[:house]).to eq('Gryffindor')
    expect(members_info.first[:animagus]).to eq('black dog')
  end
end