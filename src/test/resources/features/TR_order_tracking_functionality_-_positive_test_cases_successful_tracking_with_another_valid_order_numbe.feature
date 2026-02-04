Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successful Tracking with another Valid Order Number
    Given User is on the order tracking page
    When User enters order number "ORD987654321"
    And User clicks the "Track Order" button
    Then The order status should display "Order is in transit"
