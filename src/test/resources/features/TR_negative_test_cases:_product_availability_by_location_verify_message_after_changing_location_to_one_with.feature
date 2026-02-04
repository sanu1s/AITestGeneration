Feature: Negative Test Cases: Product Availability by Location

  Scenario: Verify message after changing location to one with no product availability
    Given User is on the product listing page
    And User's current location is set to "Urban City" with available products
    When User updates their location to "No Product Zone B"
    Then The unavailability message should display "There are no products available in your location. Shop the rest of our categories here"
