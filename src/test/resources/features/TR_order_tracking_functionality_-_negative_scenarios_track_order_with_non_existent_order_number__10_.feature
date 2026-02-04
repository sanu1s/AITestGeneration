Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Track Order with Non-existent Order Number "10"
    Given User is on the order tracking page "http://localhost:8080/track"
    When User enters order number "10"
    And User clicks the "Track Order" button
    Then The error message should display "No order found with number 10."
