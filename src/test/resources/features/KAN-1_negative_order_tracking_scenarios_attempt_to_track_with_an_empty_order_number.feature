Feature: Negative Order Tracking Scenarios

  Scenario: Attempt to track with an empty order number
    Given User is on the order tracking page
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The result message should display "Order number cannot be empty"
