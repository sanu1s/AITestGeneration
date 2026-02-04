Feature: Order Tracking - Positive Scenarios

  Scenario: User successfully tracks another valid order number
    Given User is on the order tracking page
    When User enters order number "987654321000"
    And User clicks the "Track Order" button
    Then The status message should display "Order '987654321000' has been shipped."
