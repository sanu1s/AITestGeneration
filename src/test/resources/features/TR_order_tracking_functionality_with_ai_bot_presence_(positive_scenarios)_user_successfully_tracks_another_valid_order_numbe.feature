Feature: Order Tracking Functionality with AI Bot Presence (Positive Scenarios)

  Scenario: User successfully tracks another valid order number
    Given User is on the order tracking page
    When User enters order number "TRACK7890"
    And User clicks the "Track Order" button
    Then The order status should display "Order TRACK7890 is Out for Delivery."
    And The AI Bot Assistant welcome message is displayed
