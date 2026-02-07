Feature: Negative Scenarios for Order Tracking

  Scenario: Verify error for an invalid order number
    Given I am on the order tracking page
    When I enter order number "INVALID_ORD_XYZ"
    And I click the "Track Order" button
    Then the error message should display "Order not found. Please check your order number."
