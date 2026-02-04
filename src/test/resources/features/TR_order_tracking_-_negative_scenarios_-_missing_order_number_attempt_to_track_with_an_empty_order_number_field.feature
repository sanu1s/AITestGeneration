Feature: Order Tracking - Negative Scenarios - Missing Order Number

  Scenario: Attempt to track with an empty order number field
    Given User is on the order tracking page
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Please enter an order number"
