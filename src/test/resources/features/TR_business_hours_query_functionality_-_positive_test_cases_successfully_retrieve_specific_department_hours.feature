Feature: Business Hours Query Functionality - Positive Test Cases

  Scenario: Successfully retrieve specific department hours
    Given User is on the query page
    When User enters "What are customer support hours?" into the input field
    And User clicks the "Track Order" button
    Then The result message should display "Customer support is available 24/7."
