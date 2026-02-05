Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully Track Another Valid Order
    Given User is on the order tracking page
    When User enters order number "ABC98765"
    And User clicks the "Track Order" button
    Then The order status should display "Order ABC98765 is Delivered"
