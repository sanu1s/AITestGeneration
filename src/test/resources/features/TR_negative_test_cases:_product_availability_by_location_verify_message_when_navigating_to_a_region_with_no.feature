Feature: Negative Test Cases: Product Availability by Location

  Scenario: Verify message when navigating to a region with no product availability
    Given User is on the homepage
    When User navigates to the product listing page for "Remote Region A"
    Then The unavailability message should display "There are no products available in your location. Shop the rest of our categories here"
