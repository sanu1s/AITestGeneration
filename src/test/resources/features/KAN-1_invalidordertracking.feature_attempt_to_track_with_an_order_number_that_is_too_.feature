Feature: InvalidOrderTracking.feature

  Scenario: Attempt to track with an order number that is too long
    Given User is on the order tracking page
    When User enters order number "ORD12345678901234567890"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number format"
