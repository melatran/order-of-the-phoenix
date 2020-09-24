class HogwartsService
  def get_house_members(house_name)
    response = conn.get("characters") do |req|
      req.params['house'] = house_name
      req.params['orderOfThePhoenix'] = true
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  private
  def conn
    Faraday.new('https://www.potterapi.com/v1/') do |req|
      req.params['key'] = ENV['MAGIC_KEY']
    end
  end
end