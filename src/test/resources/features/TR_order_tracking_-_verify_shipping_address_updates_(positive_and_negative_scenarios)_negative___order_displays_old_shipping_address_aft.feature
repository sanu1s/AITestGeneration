Feature: Order Tracking - Verify Shipping Address Updates (Positive and Negative Scenarios)

  Scenario: Negative - Order displays old shipping address after update attempt (as per user complaint)
    Given I am on the order tracking page
    When I enter order number "ORD12345"
    And I click the "Track Order" button
    Then the order details should display "Shipping Address: 789 Old Lane, Originalville, 98765"
    And the error message should display "Address update pending or failed. Please contact support."
