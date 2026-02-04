Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successfully track another valid order
    Given User is on the order tracking page
    When User enters order number "ORDER78901"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORDER78901 is Delivered"
