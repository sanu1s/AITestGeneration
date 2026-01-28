Feature: InvalidOrderTracking.feature

  Scenario: Attempt to track with an order number containing special characters
    Given User is on the order tracking page
    When User enters order number "ORD#123"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number format"
