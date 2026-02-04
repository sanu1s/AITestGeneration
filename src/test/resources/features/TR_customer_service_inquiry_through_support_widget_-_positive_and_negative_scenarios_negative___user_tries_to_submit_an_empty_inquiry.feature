Feature: Customer Service Inquiry through Support Widget - Positive and Negative Scenarios

  Scenario: Negative - User tries to submit an empty inquiry
    Given User is on the homepage
    When User opens the "Support Widget"
    And User types "" into the inquiry field
    And User clicks the "Submit" button
    Then The error message should display "Please enter your query."
