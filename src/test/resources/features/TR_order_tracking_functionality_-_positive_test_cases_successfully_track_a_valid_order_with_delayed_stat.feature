Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track a valid order with delayed status
    Given User is on the order tracking page
    When User enters order number "123123321"
    And User clicks the "Track Order" button
    Then The order status should display "Order 123123321 status: Delayed, new estimated delivery Monday"
