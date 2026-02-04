Feature: Order Tracking - Business Hours Validation - Negative Scenarios

  Scenario: User attempts to track another order outside business hours
    Given User is on the order tracking page
    When User enters order number "TRACK9876"
    And User clicks the "Track Order" button
    Then The error message should display "We’re sorry you have reached us outside of our business hours."
