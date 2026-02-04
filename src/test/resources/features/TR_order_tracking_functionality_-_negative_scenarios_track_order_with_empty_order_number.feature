Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Track Order with Empty Order Number
    Given User is on the order tracking page "http://localhost:8080/track"
    When User leaves order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
