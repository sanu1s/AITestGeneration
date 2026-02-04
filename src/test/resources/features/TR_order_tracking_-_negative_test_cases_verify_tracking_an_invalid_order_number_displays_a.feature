Feature: Order Tracking - Negative Test Cases

  Scenario: Verify tracking an invalid order number displays an error
    Given User is on the order tracking page
    When User enters order number "INVALID123"
    And User clicks "Track Order" button
    Then The error message should display "Invalid Order Number. Please try again."
    And The current URL should be "https://example.com/track"
