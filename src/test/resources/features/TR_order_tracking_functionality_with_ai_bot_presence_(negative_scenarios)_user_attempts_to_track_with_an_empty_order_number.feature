Feature: Order Tracking Functionality with AI Bot Presence (Negative Scenarios)

  Scenario: User attempts to track with an empty order number
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
    And The AI Bot Assistant welcome message is displayed
