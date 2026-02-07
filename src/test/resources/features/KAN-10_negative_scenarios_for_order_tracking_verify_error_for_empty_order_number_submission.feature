Feature: Negative Scenarios for Order Tracking

  Scenario: Verify error for empty order number submission
    Given I am on the order tracking page
    When I leave the order number field empty
    And I click the "Track Order" button
    Then the error message should display "Order number cannot be empty."
