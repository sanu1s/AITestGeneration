Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track without entering a billing zip code
    Given user is on the order tracking page
    When user enters order number "ORD12345"
    And user leaves billing zip code field empty
    And user clicks the "Track Order" button
    Then the error message should display "Billing zip code is required"
