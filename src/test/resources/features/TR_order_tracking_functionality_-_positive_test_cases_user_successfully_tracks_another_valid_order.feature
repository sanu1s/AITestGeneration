Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: User successfully tracks another valid order
    Given User is on the order tracking page
    When User enters order number "XYZ98765"
    And User clicks the "Track Order" button
    Then The order status should display "Your order XYZ98765 is Delivered"
