Feature: Business Hours Query Functionality - Positive Test Cases

  Scenario: Successfully retrieve general business hours
    Given User is on the query page
    When User enters "What are business hours?" into the input field
    And User clicks the "Track Order" button
    Then The result message should display "Our business hours are Monday to Friday, 9 AM to 5 PM EST."
