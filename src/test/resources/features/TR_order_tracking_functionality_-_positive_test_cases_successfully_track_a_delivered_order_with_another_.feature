Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track a delivered order with another valid order number
    Given User is on the order tracking page
    When User enters order number "OWN98765"
    And User clicks the "Track Order" button
    Then The order status should display "Order OWN98765 is Delivered"
