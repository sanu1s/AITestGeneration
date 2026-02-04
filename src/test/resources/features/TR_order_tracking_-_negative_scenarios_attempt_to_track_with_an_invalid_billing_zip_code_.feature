Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with an invalid billing zip code for a valid order
    Given user is on the order tracking page
    When user enters order number "ORD12345"
    And user enters billing zip code "11111"
    And user clicks the "Track Order" button
    Then the error message should display "Billing zip code does not match"
