Feature: Order Tracking - Negative Scenarios (Invalid Inputs)

  Scenario: Tracking an Order with Invalid Format
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "INVALID!"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format."
