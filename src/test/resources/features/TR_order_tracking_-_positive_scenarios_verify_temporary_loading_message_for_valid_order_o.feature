Feature: Order Tracking - Positive Scenarios

  Scenario: Verify temporary loading message for valid order ORD67890
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The status message should display "One moment to pull up your order and look into this for you."
