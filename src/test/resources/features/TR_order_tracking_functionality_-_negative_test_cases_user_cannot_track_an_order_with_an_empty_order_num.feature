Feature: Order Tracking Functionality - NEGATIVE TEST CASES

  Scenario: User cannot track an order with an empty order number
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
