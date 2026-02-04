Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Track Order with Another Valid Order Number "100"
    Given User is on the order tracking page "http://localhost:8080/track"
    When User enters order number "100"
    And User clicks the "Track Order" button
    Then The order status should display "Order 100 has been delivered."
