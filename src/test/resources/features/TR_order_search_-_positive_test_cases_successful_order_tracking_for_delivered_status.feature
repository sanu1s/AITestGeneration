Feature: Order Search - Positive Test Cases

  Scenario: Successful Order Tracking for Delivered Status
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks on the "Track Order" button
    Then The order status should display "Delivered"
