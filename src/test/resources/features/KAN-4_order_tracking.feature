Feature: Order Tracking

  Scenario: Successfully track a delayed order with details
    Given User navigates to the order tracking page
    When User enters order number "ORD12345"
    When User clicks the "Track Order" button
    Then The order status should be "Delayed"
    And The page should display "Delivery Date"
