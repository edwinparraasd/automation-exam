# frozen_string_literal: true

Then('Print the number of results') do
  total_results = @river_results.results_label.text
  puts total_results
  expect(total_results).to match(/^(.*)\sresults|resultados\sfor|para\s(\w*)$/)
end

Then('Order by price ascendant') do
  @river_results.sort_elements('price ascendant')
end

Then('Assert the order taking the first {int} results') do |_int|
  pending # Write code here that turns the phrase above into concrete actions
end

Then('Order and print the products by name in ascendant mode') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('Order and print the products by price in descendant mode') do
  pending # Write code here that turns the phrase above into concrete actions
end
