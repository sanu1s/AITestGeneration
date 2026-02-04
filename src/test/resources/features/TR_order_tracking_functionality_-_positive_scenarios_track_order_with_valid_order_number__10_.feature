Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Track Order with Valid Order Number "10"
    Given User is on the order tracking page "http://localhost:8080/track"
    When User enters order number "10"
    And User clicks the "Track Order" button
    Then The order status should display "Order 10 is being processed."
