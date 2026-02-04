Feature: Order Tracking - Positive Test Cases

  Scenario: User can successfully track another valid order
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "987654321098"
    And User clicks the "Track Order" button
    Then The status message should display "Order 987654321098 is Delivered"
