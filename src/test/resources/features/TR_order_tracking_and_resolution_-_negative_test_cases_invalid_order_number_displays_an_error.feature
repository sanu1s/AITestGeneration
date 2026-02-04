Feature: Order Tracking and Resolution - Negative Test Cases

  Scenario: Invalid order number displays an error
    Given User is on the order tracking page "https://owncompany.com/track"
    When User enters order number "INVALID000"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please try again."
