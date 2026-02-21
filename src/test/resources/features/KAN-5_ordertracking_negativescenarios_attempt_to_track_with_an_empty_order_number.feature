Feature: OrderTracking_NegativeScenarios

  Scenario: Attempt to track with an empty order number
    Given I am on the order tracking page
    When I leave the order number field empty
    And I click "Track Order"
    Then I should see the result message "Order number must be numeric"
