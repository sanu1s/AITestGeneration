Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Track a valid order number
    Given User is on the order tracking page
    When User enters order number "181822290976"
    And User clicks the Track Order button
    Then The status message should display "Order 181822290976 is being processed."
