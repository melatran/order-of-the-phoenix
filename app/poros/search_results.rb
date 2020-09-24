class SearchResults
  def house_members(house_name)
    json = HogwartsService.new.get_house_members(house_name)
    @members = json.map do |member_data|
      Member.new(member_data)
    end
  end
end