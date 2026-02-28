Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Track with a Non-existent Order Number
    Given I navigate to http://localhost:7070/
    When I enter order number "NONEXISTENT999"
    And I click the "Track Order" button
    Then the result should display "Order not found."
