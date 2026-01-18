Feature: Order Tracking Functionality

  Scenario: Track an existing order with specific details
    Given User is on the Order Tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then Order status should be "Delayed"
    And "Delivery Date" should be displayed
