Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Track Order with Alphanumeric Order Number "ORD-ABC"
    Given User is on the order tracking page "http://localhost:8080/track"
    When User enters order number "ORD-ABC"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format."
