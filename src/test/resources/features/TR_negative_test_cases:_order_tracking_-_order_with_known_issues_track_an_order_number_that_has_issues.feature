Feature: Negative Test Cases: Order Tracking - Order with Known Issues

  Scenario: Track an order number that has issues
    Given User is on the order tracking page
    When User enters order number "ORD98765"
    And User clicks the "Track Order" button
    Then The status message should display "It looks there are some issues with your order. Here's the current status:"
