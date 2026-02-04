Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully Track an Order - Delivered Status
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The order status should display "Delivered"
