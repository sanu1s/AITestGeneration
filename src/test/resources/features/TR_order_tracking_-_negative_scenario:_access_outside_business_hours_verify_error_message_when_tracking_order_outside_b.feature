Feature: Order Tracking - Negative Scenario: Access Outside Business Hours

  Scenario: Verify error message when tracking order outside business hours
    Given User is on the order tracking page
    When User enters order number "OFFHOURS123"
    And User clicks the "Track Order" button
    Then The error message should display "We’re sorry you have reached us outside of our business hours."
