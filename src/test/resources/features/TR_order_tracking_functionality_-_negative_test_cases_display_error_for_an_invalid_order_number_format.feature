Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Display error for an invalid order number format
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "INV@LID"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number Format. Please check and try again."
