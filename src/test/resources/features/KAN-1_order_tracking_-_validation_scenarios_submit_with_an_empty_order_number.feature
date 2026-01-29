Feature: Order Tracking - Validation Scenarios

  Scenario: Submit with an empty order number
    Given User is on the order tracking page
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The result should display "Order number cannot be empty"
