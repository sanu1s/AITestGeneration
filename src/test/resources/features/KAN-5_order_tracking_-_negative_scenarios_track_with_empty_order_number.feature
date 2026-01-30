Feature: Order Tracking - Negative Scenarios

  Scenario: Track with empty order number
    Given I am on the order tracking page
    When I leave the order number field empty
    And I click the "Track Order" button
    Then I should see the error message "Order number cannot be empty." in the result
