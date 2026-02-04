Feature: Order Tracking - Return Credit Verification (Negative Scenarios)

  Scenario: Display Error for Invalid Order Number
    Given User is on the order tracking page
    When User enters order number "INVALID_ORD789"
    And User clicks the "Track Order" button
    Then The error message should display "Order number INVALID_ORD789 not found. Please try again."
