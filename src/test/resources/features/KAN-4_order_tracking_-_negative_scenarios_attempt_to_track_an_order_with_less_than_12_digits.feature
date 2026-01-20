Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track an order with less than 12 digits
    Given User is on the order tracking page
    When User enters order number "12345678901"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number: Must be 12 digits and numeric"
