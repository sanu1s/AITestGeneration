Feature: Order Tracking Functionality

  Scenario: Track Specific Order ORD12345 with Delayed Status
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then Order status should be "Delayed"
    And Delivery date should be displayed
