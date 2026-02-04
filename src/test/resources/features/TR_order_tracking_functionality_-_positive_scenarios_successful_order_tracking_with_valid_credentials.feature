Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successful order tracking with valid credentials
    Given User is on the order tracking page
    When User enters order number "ORD12345" and billing zip code "90210"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD12345 is Shipped"
