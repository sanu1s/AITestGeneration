Feature: Order Tracking - Error Handling (Negative Scenarios)

  Scenario: Tracking with an empty order number displays a validation error
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
