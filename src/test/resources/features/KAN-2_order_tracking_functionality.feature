Feature: Order Tracking Functionality

  Scenario: Successfully track an order with 'Delayed' status and 'Delivery Date'
    Given User navigates to the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should be "Delayed"
    And The result should display "Delivery Date"
