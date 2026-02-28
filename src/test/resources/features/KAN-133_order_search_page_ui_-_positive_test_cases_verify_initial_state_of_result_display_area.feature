Feature: Order Search Page UI - Positive Test Cases

  Scenario: Verify initial state of result display area
    Given I navigate to http://localhost:7070/
    Then I should see the result display area with ID "orderDetails" is initially empty or hidden
    And the error message area with ID "error" is not visible
