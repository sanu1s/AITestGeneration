Feature: Order Tracking Functionality

  Scenario: Successfully track a known order with 'Delayed' status and 'Delivery Date'
    Given User is on the "order tracking" page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then the order status "Delayed" should be displayed
    And "Delivery Date" should be visible
