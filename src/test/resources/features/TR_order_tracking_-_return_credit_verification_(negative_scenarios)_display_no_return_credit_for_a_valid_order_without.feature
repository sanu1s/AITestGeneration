Feature: Order Tracking - Return Credit Verification (Negative Scenarios)

  Scenario: Display No Return Credit for a Valid Order Without One
    Given User is on the order tracking page
    When User enters order number "NO_RET_ORD001"
    And User clicks the "Track Order" button
    Then The status message should display "Order NO_RET_ORD001 found, but no return credit has been processed yet."
