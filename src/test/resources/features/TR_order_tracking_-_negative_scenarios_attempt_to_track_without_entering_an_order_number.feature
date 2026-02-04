Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track without entering an order number
    Given user is on the order tracking page
    When user leaves order number field empty
    And user enters billing zip code "90210"
    And user clicks the "Track Order" button
    Then the error message should display "Order number is required"
