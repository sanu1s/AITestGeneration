Feature: Negative Test Cases: Order Tracking - Order with Known Issues

  Scenario: Track another order number that has issues
    Given User is on the order tracking page
    When User enters order number "ORD11223"
    And User clicks the "Track Order" button
    Then The status message should display "It looks there are some issues with your order. Here's the current status:"
