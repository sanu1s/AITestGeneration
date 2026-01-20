Feature: OrderTracking_Negative

  Scenario: Display error for empty order number
    Given I am on the order tracking page
    When I enter order number ""
    And I click the "Track Order" button
    Then I should see the error message "Order number cannot be empty."
