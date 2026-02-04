Feature: Order Tracking Functionality - Positive Scenarios for Price Match Inquiry

  Scenario: Successfully track a valid order number for price match consideration
    Given User is on the order tracking page
    When User enters order number "ORD456789"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD456789 placed on 2023-10-26 with current status 'Shipped'"
