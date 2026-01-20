Feature: Order Tracking - Empty Input

  Scenario: Display error when no order number is entered
    Given I am on the order tracking page
    When I enter order number ""
    And I click the "Track Order" button
    Then the error message should display "Order number cannot be empty."
