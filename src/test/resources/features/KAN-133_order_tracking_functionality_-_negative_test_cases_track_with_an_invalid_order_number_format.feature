Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Track with an Invalid Order Number Format
    Given I navigate to http://localhost:7070/
    When I enter order number "INVALIDFORMAT"
    And I click the "Track Order" button
    Then the result should display "Invalid order number format."
