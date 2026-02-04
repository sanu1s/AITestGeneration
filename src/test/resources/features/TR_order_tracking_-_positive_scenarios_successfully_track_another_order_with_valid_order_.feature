Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track another order with valid order number and billing zip code
    Given user is on the order tracking page
    When user enters order number "ORD67890" and billing zip code "10001"
    And user clicks the "Track Order" button
    Then the order status should display "Order Delivered"
