Feature: OrderTracking_NegativeScenarios

  Scenario: Attempt to track with non-numeric order number
    Given I am on the order tracking page
    When I enter order number "ABCDE"
    And I click "Track Order"
    Then I should see the result message "Order number must be numeric"
