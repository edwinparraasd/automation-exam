# frozen_string_literal: true

When('Search Brand {string}') do |keyword|
  @river_results = Pages::Result::RiverResult.new
  @river_results.refining_search_by('Brand', keyword)
end

When('Select size {string}') do |keyword|
  @river_results = Pages::Result::RiverResult.new
  @river_results.refining_search_by('US Shoe Size', keyword)
end
