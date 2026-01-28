Feature: OrderTrackingValidation.feature

  Scenario: Attempt to track an order with an invalid format order number
    Given I am on the order tracking page
    When I enter the order number "SHORT"
    And I click the "Track Order" button
    Then the result should display "Invalid Order Number format."
