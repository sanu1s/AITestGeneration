Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a delayed order
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The result should display "The order status Delayed"
    And The result should contain "Delivery Date"
