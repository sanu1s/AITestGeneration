Feature: Order Tracking - Negative Scenarios for Invalid Order Inputs

  Scenario: Tracking an order with an invalid format order number
    Given User is on the order tracking page "http://localhost:8080/track-order"
    When User enters order number "INVALID"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format"
