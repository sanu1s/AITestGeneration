Feature: Order Tracking System - Negative Scenarios

  Scenario: Display Error for Empty Order Number
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
    And The URL should be "https://www.example.com/track"
