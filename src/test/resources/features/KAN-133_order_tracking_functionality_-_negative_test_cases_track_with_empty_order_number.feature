Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Track with Empty Order Number
    Given I navigate to http://localhost:7070/
    When I leave the order number field empty
    And I click the "Track Order" button
    Then the result should display "Order number cannot be empty."
