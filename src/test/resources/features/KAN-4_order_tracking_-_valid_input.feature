Feature: Order Tracking - Valid Input

  Scenario: Track a valid 12-digit numeric order
    Given User is on the order tracking page
    When User enters order number "123456789012"
    And User clicks the "Track Order" button
    Then The order status should be "Delayed"
    And The delivery date should be displayed
