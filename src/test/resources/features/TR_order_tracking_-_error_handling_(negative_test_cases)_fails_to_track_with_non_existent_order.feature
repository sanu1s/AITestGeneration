Feature: Order Tracking - Error Handling (Negative Test Cases)

  Scenario: Fails to Track with Non-existent Order
    Given User is on the order tracking page "http://localhost:8080/track-order"
    When User enters order number "NONEXISTENT000"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please verify the order number."
