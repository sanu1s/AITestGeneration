Feature: Order Tracking Functionality

  Scenario: Display error for an order number exceeding maximum length
    Given User is on the order tracking page
    When User enters order number "ORD12345678901234567890"
    And User clicks the "Track Order" button
    Then The error message should display "Order number exceeds maximum length."
