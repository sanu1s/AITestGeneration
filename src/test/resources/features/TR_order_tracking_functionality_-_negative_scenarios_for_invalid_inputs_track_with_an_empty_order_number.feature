Feature: Order Tracking Functionality - Negative Scenarios for Invalid Inputs

  Scenario: Track with an empty order number
    Given User is on the order tracking page
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
