Feature: Order Tracking - Negative Scenarios for Invalid and Empty Order Numbers

  Scenario: Display error for an empty order number ""
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks on "Track Order" button
    Then The error message should display "Order number cannot be empty."
