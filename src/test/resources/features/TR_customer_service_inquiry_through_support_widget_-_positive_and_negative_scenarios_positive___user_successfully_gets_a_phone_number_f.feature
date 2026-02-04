Feature: Customer Service Inquiry through Support Widget - Positive and Negative Scenarios

  Scenario: Positive - User successfully gets a phone number from support inquiry
    Given User is on the homepage
    When User opens the "Support Widget"
    And User types "How can I contact support?" into the inquiry field
    And User clicks the "Submit" button
    Then The response message should display "You can reach us at 1-800-PLAYWRIGHT."
