Feature: AI Bot Assistant Order Tracking Functionality - Negative Scenarios

  Scenario: Tracking with an Invalid Order Number
    Given User is on the order tracking page
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please try again."
