Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successfully track another valid order number
    Given user is on the order tracking page
    When User enters order number "ORD98765"
    And User clicks the "Track Order" button
    Then The tracking status should display "Order ORD98765 has been shipped."
