class SearchController < ApplicationController
  def index
    house = params[:house]
    results = SearchResults.new
    @members = results.house_members(house)
  end
end