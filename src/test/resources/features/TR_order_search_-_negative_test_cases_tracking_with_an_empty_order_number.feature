Feature: Order Search - Negative Test Cases

  Scenario: Tracking with an Empty Order Number
    Given User is on the order tracking page
    When User enters an empty order number
    And User clicks on the "Track Order" button
    Then The error message should display "Please enter an order number."
