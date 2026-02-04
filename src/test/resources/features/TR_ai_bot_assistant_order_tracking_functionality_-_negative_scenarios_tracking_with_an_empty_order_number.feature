Feature: AI Bot Assistant Order Tracking Functionality - Negative Scenarios

  Scenario: Tracking with an Empty Order Number
    Given User is on the order tracking page
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Order Number cannot be empty."
