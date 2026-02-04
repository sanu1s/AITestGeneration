Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track an order with an original delivery date
    Given User is on the order tracking page "http://localhost:8080/track-order"
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "Estimated delivery: August 6, 2023"
