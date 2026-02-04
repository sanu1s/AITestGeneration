Feature: Order Tracking - Error Handling (Negative Test Cases)

  Scenario: Display error for invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please try again."
