Feature: Order Tracking - Negative Scenarios: Business Hours Validation

  Scenario: Verify error message when tracking order outside business hours with another valid order number
    Given User is on the order tracking page
    When User enters order number "TRACK-101"
    And User clicks the "Track Order" button
    Then The error message should display "We’re sorry you have reached us outside of our business hours."
