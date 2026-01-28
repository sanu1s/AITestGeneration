Feature: Order Tracking

  Scenario: Handle order number with leading/trailing spaces
    Given User is on the order tracking page
    When User enters order number "  ORD12345  "
    And User clicks the "Track Order" button
    Then The order status should display "The order status Delayed"
