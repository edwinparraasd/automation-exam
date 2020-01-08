# frozen_string_literal: true

Given('User is in Ebay home page') do
  @home_page = Pages::Home::Index.new
  @home_page.go_home_page
end

When('Search for {string}') do |keyword|
  @home_page.search_keyword(keyword)
end
