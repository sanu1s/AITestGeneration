Feature: Order Tracking Functionality - Positive Scenarios for Price Match Inquiry

  Scenario: Successfully track another valid order number for price match consideration
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD12345 placed on 2023-10-20 with current status 'Delivered'"
