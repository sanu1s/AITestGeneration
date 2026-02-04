Feature: Order Tracking - Positive Scenarios

  Scenario: Successful tracking of a valid order
    Given User is on the order tracking page
    When User enters order number "0053021403"
    And User clicks the "Track Order" button
    Then The tracking status should display "Order 0053021403 is being processed"
