Feature: Order Tracking - Negative Scenarios

  Scenario: Display error for invalid format order number
    Given User is on the order tracking page "http://localhost:8080/track-order"
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number Format."
