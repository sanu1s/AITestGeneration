Feature: Order Cancellation Functionality - Positive and Negative Scenarios

  Scenario: Attempt to cancel an already cancelled order
    Given User is on the "Order Tracking" page at "https://example.com/track"
    When User enters order number "CANCELLED987"
    And User clicks "Track Order" button
    Then The error message should display "Order CANCELLED987 is already cancelled."
