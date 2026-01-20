Feature: Order Tracking - Invalid Length

  Scenario: Display error for an order number shorter than 12 digits
    Given I am on the order tracking page
    When I enter order number "12345"
    And I click the "Track Order" button
    Then the error message should display "Order number must be 12 digits long."
