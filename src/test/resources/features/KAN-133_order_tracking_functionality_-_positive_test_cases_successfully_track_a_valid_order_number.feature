Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully Track a Valid Order Number
    Given I navigate to http://localhost:7070/
    When I enter order number "ORD12345"
    And I click the "Track Order" button
    Then the result should display "The order status Delayed"
