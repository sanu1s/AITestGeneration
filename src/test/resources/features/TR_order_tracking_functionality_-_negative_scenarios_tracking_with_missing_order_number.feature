Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Tracking with missing order number
    Given User is on the order tracking page
    When User enters order number "" and billing zip code "90210"
    And User clicks the "Track Order" button
    Then The error message should display "Order number is required"
