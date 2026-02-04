Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track a shipped order
    Given User is on the order tracking page
    When User enters order number "SHIPPED12345"
    And User clicks the "Track Order" button
    Then The order status should display "Order SHIPPED12345 has been shipped. Expected delivery by 2024-12-31."
