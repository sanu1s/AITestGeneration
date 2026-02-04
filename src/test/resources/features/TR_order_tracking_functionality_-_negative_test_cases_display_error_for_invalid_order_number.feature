Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Display error for invalid order number
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "INVALID1"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please check and try again."
    And User should be on the URL "https://example.com/track-order"
