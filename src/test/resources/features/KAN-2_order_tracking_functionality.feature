Feature: Order Tracking Functionality

  Scenario: Successfully track a specific order with known status
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then the order status should be "Delayed"
    And "Delivery Date" should be displayed
