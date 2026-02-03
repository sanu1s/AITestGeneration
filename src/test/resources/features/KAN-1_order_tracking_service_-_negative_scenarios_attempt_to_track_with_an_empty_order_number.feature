Feature: Order Tracking Service - Negative Scenarios

  Scenario: Attempt to track with an empty order number
    Given I am on the order tracking page
    When I leave the order number field empty
    And I click the "Track Order" button
    Then I should see an error message "Order number is required."
