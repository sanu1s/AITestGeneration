Feature: Order Tracking Functionality

  Scenario: Successfully track a delayed order with specific details
    Given User is on the Order Tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should be "Delayed"
    And The result should display "Delivery Date"
