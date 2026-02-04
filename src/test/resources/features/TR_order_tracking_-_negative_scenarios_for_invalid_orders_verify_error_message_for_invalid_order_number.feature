Feature: Order Tracking - Negative Scenarios for Invalid Orders

  Scenario: Verify Error Message for Invalid Order Number
    Given User is on the order tracking page
    When User enters order number "INVALID000"
    And User clicks the "Track Order" button
    Then The error message should display "Order Not Found."
