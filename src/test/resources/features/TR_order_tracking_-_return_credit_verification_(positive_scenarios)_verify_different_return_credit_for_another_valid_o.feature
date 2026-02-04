Feature: Order Tracking - Return Credit Verification (Positive Scenarios)

  Scenario: Verify Different Return Credit for Another Valid Order
    Given User is on the order tracking page
    When User enters order number "RET_ORD456"
    And User clicks the "Track Order" button
    Then The status message should display "Return credit of $125.50 processed for order RET_ORD456"
