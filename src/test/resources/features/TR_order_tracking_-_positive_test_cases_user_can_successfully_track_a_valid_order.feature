Feature: Order Tracking - Positive Test Cases

  Scenario: User can successfully track a valid order
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "181923670670"
    And User clicks the "Track Order" button
    Then The status message should display "Order 181923670670 is Shipped"
