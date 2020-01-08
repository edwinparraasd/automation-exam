# frozen_string_literal: true

Then('Print the number of results') do
  total_results = @river_results.results_label.text
  puts total_results
  expect(total_results).to match(/^(.*)\sresults|resultados\sfor|para\s(\w*)$/)
end

Then('Order by price ascendant') do
  @river_results.sort_elements('price ascendant')
end

Then('Assert the order taking the first {int} results') do |total_asserts|
  @data_results = Helper.data_search(@river_results, 'Array')

  @data_results.each_with_index do |data, index|
    break if index.eql? total_asserts.to_i

    expect(data[1]).to be <= @data_results[index + 1][1]
  end
end

Then('Order and print the products by name in ascendant mode') do
  data_results = Helper.data_search(@river_results, 'Array of Hashes')
  data_results.sort_by! { |data| data[:name] }
  Helper.print_results(data_results)
end

Then('Order and print the products by price in descendant mode') do
  data_results = Helper.data_search(@river_results, 'Array of Hashes')
  data_results.sort_by! { |data| -data[:full_price] }
  Helper.print_results(data_results)
end
