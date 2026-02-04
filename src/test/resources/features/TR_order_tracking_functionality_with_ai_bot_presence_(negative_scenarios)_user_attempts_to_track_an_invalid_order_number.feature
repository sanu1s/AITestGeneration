Feature: Order Tracking Functionality with AI Bot Presence (Negative Scenarios)

  Scenario: User attempts to track an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID_ORDER"
    And User clicks the "Track Order" button
    Then The error message should display "Order INVALID_ORDER not found. Please verify the number."
    And The AI Bot Assistant welcome message is displayed
