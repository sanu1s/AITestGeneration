Feature: Order Tracking - Negative Test Cases

  Scenario: Attempt to track an order with invalid format
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "INVALID_FORMAT"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number format. Please use alphanumeric characters."
