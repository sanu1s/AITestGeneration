Feature: Order Tracking System - Positive Scenarios

  Scenario: Successful Order Tracking - Confirmation of Past Removal
    Given User is on the order tracking page
    When User enters order number "ORD712"
    And User clicks the "Track Order" button
    Then The order status should display "Order was removed on 7/12 as requested."
