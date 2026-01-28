Feature: OrderTrackingValidation.feature

  Scenario: Attempt to track a non-existent order number
    Given I am on the order tracking page
    When I enter the order number "NONEXISTENT"
    And I click the "Track Order" button
    Then the result should display "Order not found."
