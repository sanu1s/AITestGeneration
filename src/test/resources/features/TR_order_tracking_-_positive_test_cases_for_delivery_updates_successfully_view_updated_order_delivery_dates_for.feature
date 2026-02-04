Feature: Order Tracking - Positive Test Cases for Delivery Updates

  Scenario: Successfully view updated order delivery dates for Order ORD23456
    Given User is on the order tracking page
    When User enters order number "ORD23456"
    And User clicks the "Track Order" button
    Then The status message should display "It looks your order has been updated with new estimated delivery dates."
