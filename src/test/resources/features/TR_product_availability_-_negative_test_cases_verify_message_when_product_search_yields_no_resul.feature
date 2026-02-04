Feature: Product Availability - Negative Test Cases

  Scenario: Verify message when product search yields no results for the current location
    Given User is on the product search page
    When User searches for "Non-existent Product"
    Then The status message should display "There are no products available in your location. Shop the rest of our categories here"
