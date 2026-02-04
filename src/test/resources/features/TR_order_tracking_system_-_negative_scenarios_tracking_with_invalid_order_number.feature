Feature: Order Tracking System - Negative Scenarios

  Scenario: Tracking with Invalid Order Number
    Given User is on the Order Tracking page
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please try again."
    And The URL should remain "https://example.com/track"
