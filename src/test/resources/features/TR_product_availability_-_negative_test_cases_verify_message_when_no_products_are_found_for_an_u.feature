Feature: Product Availability - Negative Test Cases

  Scenario: Verify message when no products are found for an unsupported location
    Given User is on the product availability page
    When User selects location "Unsupported Region" and applies
    Then The status message should display "There are no products available in your location. Shop the rest of our categories here"
