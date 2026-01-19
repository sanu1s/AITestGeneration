Feature: Order Tracking Functionality

  Scenario: Track a specific order number showing 'Delayed' status and 'Delivery Date'
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should be displayed as "Delayed"
    And The result should contain "Delivery Date"
