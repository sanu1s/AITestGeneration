Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track an order with valid details
    Given User is on the order tracking page
    When User enters order number "ORD12345" and billing zip code "90210"
    And User clicks the "Track Order" button
    Then The tracking status should display "Order ORD12345 is Shipped"
