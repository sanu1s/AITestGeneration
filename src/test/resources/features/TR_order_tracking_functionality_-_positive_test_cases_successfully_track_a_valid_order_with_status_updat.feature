Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track a valid order with status update
    Given User is on the order tracking page
    When User enters order number "ORD78901"
    And User clicks the "Track Order" button
    Then The order status should display "Here's the latest update on your order: Your order ORD78901 is out for delivery."
