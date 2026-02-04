Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Attempt to track with missing order number
    Given User is on the order tracking page
    When User enters order number ""
    And User enters billing zip code "90210"
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
