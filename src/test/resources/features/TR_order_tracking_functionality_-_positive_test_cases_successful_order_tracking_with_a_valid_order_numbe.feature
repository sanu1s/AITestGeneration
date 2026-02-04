Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successful Order Tracking with a Valid Order Number
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks on "Track Order" button
    Then The tracking status should display "Order ORD12345 is Shipped"
