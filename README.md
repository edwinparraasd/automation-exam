# Automation Exam

This is a project to test a shoes search in [ebay](http://www.ebay.com/)

## Getting Started

These instructions will get you run the tests.

### Prerequisites

To run the test, is necessary that you install:

 - `Homebrew` 2.2.2, but you can use another suite manager(e.g. pip)
 - `ruby` 2.6.5
 - `Chrome` 79.0.39 [Chrome](https://www.google.com/intl/es/chrome/)
 - `ChromeDriver` 79.0.3945.36 ->
  ``` brew install chromedriver ```
 - `Firefox` 79.0.39 (Optional) [Firefox](https://www.mozilla.org/es-ES/firefox/new/)
 - `geckodriver` 0.26.0 (Optional) ->
   ``` brew install chromedriver ```

### Installing

To install all gems, run this command:

```
bundle install
```

Copy .env.example to .env

```
cp .env.example .env
```

*Important:* You must change PASS_SENDGRID. If you want you can contact me for that. 

## Running the tests

To run the automated tests, you run this command:

```
cucumber
```

If you want you can generate a report with this command:

```
cucumber -f html -o results.htm
```

### And coding style tests

All the test are in  `*.features`  file.

And used Cucumber structure:

```
Feature: Search articules

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
```

## Built With

* [Cucumber](https://cucumber.io/tools/cucumber-open/) - Automation tool for Behavior-Driven Development
* [Capybara](http://teamcapybara.github.io/capybara/) - Capybara is a library written in the Ruby programming language which makes it easy to simulate how a user interacts with your application.
* [Siteprism](https://github.com/site-prism/site_prism) - A Page Object Model DSL for Capybara

## Author

* **David Peña** - *Initial work* - [darepecu](https://github.com/darepecu)

