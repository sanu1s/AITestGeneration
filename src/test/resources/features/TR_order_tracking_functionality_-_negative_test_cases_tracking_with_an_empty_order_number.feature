Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Tracking with an Empty Order Number
    Given User is on the order tracking page "https://www.owncompany.com/track"
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
