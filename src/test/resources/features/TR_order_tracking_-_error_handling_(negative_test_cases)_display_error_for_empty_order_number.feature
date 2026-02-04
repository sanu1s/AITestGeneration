Feature: Order Tracking - Error Handling (Negative Test Cases)

  Scenario: Display error for empty order number
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order Number cannot be empty."
