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
  items = @river_results.river_result_container.all('li', class: 's-item')
  @data_results = Array.new

  items.each do |item|
    name = item.all('h3', class: 's-item__title').first.text
    price = Helper.convert_price(item.all('span', class: 's-item__price').first.text)
    shipping = Helper.convert_shipping(item.all('span', class: 's-item__shipping').first.text)
    @data_results << [name, price + shipping]
  end

  @data_results.each_with_index do |data, index|
    break if index.eql?  total_asserts.to_i
    expect(data[1]).to be <= @data_results[index+1][1]
  end
end

Then('Order and print the products by name in ascendant mode') do
  byebug
end

Then('Order and print the products by price in descendant mode') do
  pending # Write code here that turns the phrase above into concrete actions
end
