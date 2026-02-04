Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track another order with valid details
    Given User navigates to the order tracking page
    When User enters order number "ORD67890"
    And User enters billing zip code "10001"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD67890 found. Status: Delivered."
