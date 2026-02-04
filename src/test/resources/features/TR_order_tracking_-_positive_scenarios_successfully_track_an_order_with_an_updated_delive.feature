Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track an order with an updated delivery date
    Given User is on the order tracking page "http://localhost:8080/track-order"
    When User enters order number "ORD78901"
    And User clicks the "Track Order" button
    Then The order status should display "Estimated delivery: October 15, 2023"
