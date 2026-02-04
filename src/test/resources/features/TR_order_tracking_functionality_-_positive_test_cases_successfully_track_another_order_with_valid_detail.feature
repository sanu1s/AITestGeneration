Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track another order with valid details
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User enters billing zip code "10001"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD67890 has been shipped. Expected delivery: 2024-07-28"
