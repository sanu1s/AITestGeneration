Feature: Order Tracking - Negative Scenarios - Outside Business Hours

  Scenario: Attempt to track an order outside business hours - Case 2
    Given User is on the order tracking page
    When User enters order number "ORD_OUT_HOURS_2"
    And User clicks the "Track Order" button
    Then The message "We’re sorry you have reached us outside of our business hours." should be displayed
