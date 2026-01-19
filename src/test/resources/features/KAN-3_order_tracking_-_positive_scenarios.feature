Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a delayed order with delivery date
    Given User is on the Order Tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "Delayed"
    And The delivery information should contain "Delivery Date"
