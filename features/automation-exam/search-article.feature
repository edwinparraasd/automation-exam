Feature: Search artitules

  Scenario: Automation Exam
    Given User is in Ebay home page
     When Search for 'Shoes'
      And Search Brand 'PUMA'
      And Select size '10'
     Then Print the number of results
      And Order by price ascendant
      And Assert the order taking the first 5 results
      And Order and print the products by name in ascendant mode
      And Order and print the products by price in descendant mode

