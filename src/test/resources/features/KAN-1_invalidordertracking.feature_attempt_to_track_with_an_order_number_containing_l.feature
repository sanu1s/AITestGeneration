Feature: InvalidOrderTracking.feature

  Scenario: Attempt to track with an order number containing leading/trailing spaces
    Given User is on the order tracking page
    When User enters order number " ORD12345 "
    And User clicks the "Track Order" button
    Then The error message should display "Order not found"
