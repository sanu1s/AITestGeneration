Feature: Order Tracking - Negative Scenarios for Invalid Order Numbers

  Scenario: Track Order with Empty Order Number
    Given User is on the Order Tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
