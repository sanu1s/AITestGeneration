Feature: Order Tracking - Positive Scenarios for Delivered Orders

  Scenario: Successfully track another delivered order
    Given User is on the order tracking page
    When User enters order number "DELIVERY123"
    And User clicks on "Track Order" button
    Then The order status should display "It looks your order has been delivered. Here are the details:"
