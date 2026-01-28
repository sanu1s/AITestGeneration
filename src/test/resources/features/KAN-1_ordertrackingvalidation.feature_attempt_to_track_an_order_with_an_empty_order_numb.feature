Feature: OrderTrackingValidation.feature

  Scenario: Attempt to track an order with an empty order number
    Given I am on the order tracking page
    When I leave the order number field empty
    And I click the "Track Order" button
    Then the result should display "Order number cannot be empty."
