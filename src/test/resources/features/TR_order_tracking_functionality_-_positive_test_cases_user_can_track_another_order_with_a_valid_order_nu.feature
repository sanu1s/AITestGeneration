Feature: Order Tracking Functionality - POSITIVE TEST CASES

  Scenario: User can track another order with a valid order number
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "XYZ98765"
    And User clicks the "Track Order" button
    Then The order status should display "Delivered"
