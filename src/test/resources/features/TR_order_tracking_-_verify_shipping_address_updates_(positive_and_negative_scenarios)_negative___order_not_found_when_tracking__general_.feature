Feature: Order Tracking - Verify Shipping Address Updates (Positive and Negative Scenarios)

  Scenario: Negative - Order not found when tracking (general error case)
    Given I am on the order tracking page
    When I enter order number "INVALID000"
    And I click the "Track Order" button
    Then the error message should display "Order not found. Please check your order number."
