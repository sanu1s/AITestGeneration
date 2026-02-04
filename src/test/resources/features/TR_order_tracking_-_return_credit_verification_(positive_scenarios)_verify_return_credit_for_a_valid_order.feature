Feature: Order Tracking - Return Credit Verification (Positive Scenarios)

  Scenario: Verify Return Credit for a Valid Order
    Given User is on the order tracking page
    When User enters order number "RET_ORD123"
    And User clicks the "Track Order" button
    Then The status message should display "Return credit of $61.13 processed for order RET_ORD123"
