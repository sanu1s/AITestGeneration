Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully Track another Valid Order Number
    Given I navigate to http://localhost:7070/
    When I enter order number "ORD67890"
    And I click the "Track Order" button
    Then the result should display "The order status Delayed"
