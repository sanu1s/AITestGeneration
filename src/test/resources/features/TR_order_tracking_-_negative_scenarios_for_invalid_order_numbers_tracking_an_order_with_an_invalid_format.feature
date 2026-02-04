Feature: Order Tracking - Negative Scenarios for Invalid Order Numbers

  Scenario: Tracking an order with an invalid format
    Given User is on the order tracking page
    When User enters order number "INVALID_FORMAT"
    And User clicks the "Track Order" button
    Then The error message should display "Please enter a valid order number format."
